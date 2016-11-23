.class public Landroid/hardware/Camera$LetvDualCamParam;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LetvDualCamParam"
.end annotation


# instance fields
.field public arg1:I

.field public arg2:I

.field public cmd:I

.field public data:[B

.field public farg1:F

.field public farg2:F

.field public type:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2217
    iput v0, p0, Landroid/hardware/Camera$LetvDualCamParam;->cmd:I

    .line 2218
    iput v0, p0, Landroid/hardware/Camera$LetvDualCamParam;->type:I

    .line 2220
    iput v0, p0, Landroid/hardware/Camera$LetvDualCamParam;->arg1:I

    .line 2221
    iput v0, p0, Landroid/hardware/Camera$LetvDualCamParam;->arg2:I

    .line 2222
    iput v0, p0, Landroid/hardware/Camera$LetvDualCamParam;->x:I

    .line 2223
    iput v0, p0, Landroid/hardware/Camera$LetvDualCamParam;->y:I

    .line 2224
    iput v1, p0, Landroid/hardware/Camera$LetvDualCamParam;->farg1:F

    .line 2225
    iput v1, p0, Landroid/hardware/Camera$LetvDualCamParam;->farg2:F

    .line 2226
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera$LetvDualCamParam;->data:[B

    .line 2215
    return-void
.end method
