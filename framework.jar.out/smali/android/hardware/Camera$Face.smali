.class public Landroid/hardware/Camera$Face;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public age:I

.field public blinkDetected:I

.field public faceRecognised:I

.field public gender:I

.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I

.field public smileDegree:I

.field public smileScore:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1948
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/Camera$Face;->id:I

    .line 1957
    iput-object v2, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 1966
    iput-object v2, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 1975
    iput-object v2, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 1980
    iput v1, p0, Landroid/hardware/Camera$Face;->smileDegree:I

    .line 1984
    iput v1, p0, Landroid/hardware/Camera$Face;->smileScore:I

    .line 1988
    iput v1, p0, Landroid/hardware/Camera$Face;->blinkDetected:I

    .line 1992
    iput v1, p0, Landroid/hardware/Camera$Face;->faceRecognised:I

    .line 1997
    iput v1, p0, Landroid/hardware/Camera$Face;->age:I

    .line 2001
    iput v1, p0, Landroid/hardware/Camera$Face;->gender:I

    .line 1889
    return-void
.end method
