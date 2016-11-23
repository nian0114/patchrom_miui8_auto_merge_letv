.class public Landroid/media/RefocusImage$Section;
.super Ljava/lang/Object;
.source "RefocusImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RefocusImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation


# instance fields
.field public mIsDepthData:Z

.field public mIsExif:Z

.field public mIsOriginData:Z

.field public mLength:I

.field public mMarker:I

.field public mOffset:J


# direct methods
.method public constructor <init>(IJIZZZ)V
    .locals 0
    .param p1, "marker"    # I
    .param p2, "offset"    # J
    .param p4, "length"    # I
    .param p5, "isExif"    # Z
    .param p6, "isOriginData"    # Z
    .param p7, "isDepthData"    # Z

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput p1, p0, Landroid/media/RefocusImage$Section;->mMarker:I

    .line 228
    iput-wide p2, p0, Landroid/media/RefocusImage$Section;->mOffset:J

    .line 229
    iput p4, p0, Landroid/media/RefocusImage$Section;->mLength:I

    .line 230
    iput-boolean p5, p0, Landroid/media/RefocusImage$Section;->mIsExif:Z

    .line 231
    iput-boolean p6, p0, Landroid/media/RefocusImage$Section;->mIsOriginData:Z

    .line 232
    iput-boolean p7, p0, Landroid/media/RefocusImage$Section;->mIsDepthData:Z

    .line 233
    return-void
.end method
