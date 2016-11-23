.class public Lcom/android/internal/telephony/logdigger/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"


# instance fields
.field public category:I

.field public cause:I

.field public type:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "type"    # I
    .param p3, "cause"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/android/internal/telephony/logdigger/BaseModel;->category:I

    .line 20
    iput p2, p0, Lcom/android/internal/telephony/logdigger/BaseModel;->type:I

    .line 21
    iput p3, p0, Lcom/android/internal/telephony/logdigger/BaseModel;->cause:I

    .line 22
    return-void
.end method
