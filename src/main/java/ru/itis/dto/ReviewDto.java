package ru.itis.dto;

public class ReviewDto {

    private String review;

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    @Override
    public String toString() {
        return review;
    }
}
