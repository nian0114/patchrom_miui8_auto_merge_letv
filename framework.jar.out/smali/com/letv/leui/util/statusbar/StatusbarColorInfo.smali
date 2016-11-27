.class public Lcom/letv/leui/util/statusbar/StatusbarColorInfo;
.super Ljava/lang/Object;
.source "StatusbarColorInfo.java"


# instance fields
.field private StatusbarIconColor:I

.field private statusbarBgColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusbarBgColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;->statusbarBgColor:I

    return v0
.end method

.method public getStatusbarIconColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;->StatusbarIconColor:I

    return v0
.end method

.method public setStatusbarBgColor(I)V
    .locals 0
    .param p1, "statusbarBgColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;->statusbarBgColor:I

    return-void
.end method

.method public setStatusbarIconColor(I)V
    .locals 0
    .param p1, "statusbarIconColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;->StatusbarIconColor:I

    return-void
.end method
