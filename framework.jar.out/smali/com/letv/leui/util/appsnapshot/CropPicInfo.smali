.class public Lcom/letv/leui/util/appsnapshot/CropPicInfo;
.super Ljava/lang/Object;
.source "CropPicInfo.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public index:I

.field public isFoot:Z

.field public isHead:Z

.field public picHeight:I

.field public picWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isHead:Z

    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isFoot:Z

    return-void
.end method
