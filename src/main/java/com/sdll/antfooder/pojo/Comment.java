package com.sdll.antfooder.pojo;

public class Comment {
    private String commentId;

    private String foodId;

    private String userId;

    private String commentDate;

    private String comment;

    private String reComment;

    private String commentOthers;

    private String commentStatus;

    public String getCommentId() {
        return commentId;
    }

    public void setCommentId(String commentId) {
        this.commentId = commentId == null ? null : commentId.trim();
    }

    public String getFoodId() {
        return foodId;
    }

    public void setFoodId(String foodId) {
        this.foodId = foodId == null ? null : foodId.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getCommentDate() {
        return commentDate;
    }

    public void setCommentDate(String commentDate) {
        this.commentDate = commentDate == null ? null : commentDate.trim();
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }

    public String getReComment() {
        return reComment;
    }

    public void setReComment(String reComment) {
        this.reComment = reComment == null ? null : reComment.trim();
    }

    public String getCommentOthers() {
        return commentOthers;
    }

    public void setCommentOthers(String commentOthers) {
        this.commentOthers = commentOthers == null ? null : commentOthers.trim();
    }

    public String getCommentStatus() {
        return commentStatus;
    }

    public void setCommentStatus(String commentStatus) {
        this.commentStatus = commentStatus == null ? null : commentStatus.trim();
    }
}