import logging
import os
from typing import Annotated

from fastapi import Depends, FastAPI, Header, HTTPException, status
from pydantic import BaseModel

logging.basicConfig(level=os.getenv("LOG_LEVEL", "INFO"))
logger = logging.getLogger("zero-trust-api")

app = FastAPI(
    title="NovaSecure Zero Trust API",
    version="1.0.0",
    description="Portfolio lab API. Replace demonstration header validation with real Entra token validation before deployment.",
)

class Profile(BaseModel):
    user: str
    role: str

def require_demo_identity(
    x_demo_user: Annotated[str | None, Header()] = None,
    x_demo_role: Annotated[str | None, Header()] = None,
) -> Profile:
    """
    Local demonstration only.
    In an Azure lab, validate a signed Entra JWT: issuer, audience, signature,
    expiry, tenant, and role claims. mTLS should be enforced at the gateway
    or application server.
    """
    if not x_demo_user or not x_demo_role:
        logger.warning("Denied request: missing demo identity headers")
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Authentication required",
        )
    return Profile(user=x_demo_user, role=x_demo_role)

@app.get("/health")
def health() -> dict[str, str]:
    return {"status": "healthy"}

@app.get("/profile", response_model=Profile)
def profile(identity: Annotated[Profile, Depends(require_demo_identity)]) -> Profile:
    return identity

@app.get("/secure-data")
def secure_data(identity: Annotated[Profile, Depends(require_demo_identity)]) -> dict:
    allowed_roles = {"Security.Investigate", "Application.Admin"}
    if identity.role not in allowed_roles:
        logger.warning("Authorisation denied for user=%s role=%s", identity.user, identity.role)
        raise HTTPException(status_code=403, detail="Insufficient role")
    logger.info("Authorised secure-data access user=%s role=%s", identity.user, identity.role)
    return {"classification": "synthetic", "message": "Authorised portfolio-lab response"}
