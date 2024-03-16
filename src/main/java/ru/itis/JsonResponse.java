package ru.itis;

public class JsonResponse {
    private String status;
    private Object result;

    public String getStatus() {
        return status;
    }

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
