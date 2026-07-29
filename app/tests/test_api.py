from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)

def test_health():
    response = client.get("/health")
    assert response.status_code == 200
    assert response.json()["status"] == "healthy"

def test_missing_identity_is_denied():
    response = client.get("/profile")
    assert response.status_code == 401

def test_employee_cannot_read_secure_data():
    response = client.get(
        "/secure-data",
        headers={"x-demo-user": "alice", "x-demo-role": "Employee.Read"},
    )
    assert response.status_code == 403

def test_security_role_can_read_secure_data():
    response = client.get(
        "/secure-data",
        headers={"x-demo-user": "priya", "x-demo-role": "Security.Investigate"},
    )
    assert response.status_code == 200
