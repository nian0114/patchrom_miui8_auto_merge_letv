.class public Landroid/graphics/BlurParams;
.super Ljava/lang/Object;
.source "BlurParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BLUR_FLT_EPSILON:F = 0.01f

.field public static final BLUR_MODE_NONE:I = 0x0

.field public static final BLUR_MODE_VIEW:I = 0x1

.field public static final BLUR_MODE_WINDOW:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/BlurParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BLUR_MODE:I = 0x0

.field public static final DEFAULT_CHROMA_CONTRAST:F = 1.0f

.field public static final DEFAULT_COLOR:I = 0x0

.field public static final DEFAULT_LUMA_BRIGHTNESS:F = 0.0f

.field public static final DEFAULT_LUMA_CONTRAST:F = 1.0f

.field public static final DEFAULT_RADIUS:F = 0.0f

.field public static final EMPTY:Landroid/graphics/BlurParams;

.field public static final PRESET_DARKER_M:I = 0x1

.field public static final PRESET_DARKER_XL:I = 0x2

.field public static final PRESET_LIGHTER_L:I = 0x3

.field public static final PRESET_NORMAL_M:I


# instance fields
.field public area:Landroid/graphics/Rect;

.field public blendColor:I

.field public chromaContrast:F

.field public lumaBrightness:F

.field public lumaContrast:F

.field public mode:I

.field public radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/graphics/BlurParams;

    invoke-direct {v0}, Landroid/graphics/BlurParams;-><init>()V

    sput-object v0, Landroid/graphics/BlurParams;->EMPTY:Landroid/graphics/BlurParams;

    new-instance v0, Landroid/graphics/BlurParams$1;

    invoke-direct {v0}, Landroid/graphics/BlurParams$1;-><init>()V

    sput-object v0, Landroid/graphics/BlurParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Landroid/graphics/BlurParams;->mode:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    iput v1, p0, Landroid/graphics/BlurParams;->radius:F

    iput v2, p0, Landroid/graphics/BlurParams;->lumaContrast:F

    iput v1, p0, Landroid/graphics/BlurParams;->lumaBrightness:F

    iput v2, p0, Landroid/graphics/BlurParams;->chromaContrast:F

    iput v3, p0, Landroid/graphics/BlurParams;->blendColor:I

    return-void
.end method

.method public constructor <init>(FFFFI)V
    .locals 4
    .param p1, "radius"    # F
    .param p2, "lumaContrast"    # F
    .param p3, "lumaBrightness"    # F
    .param p4, "chromaContrast"    # F
    .param p5, "blendColor"    # I

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Landroid/graphics/BlurParams;->mode:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    iput v1, p0, Landroid/graphics/BlurParams;->radius:F

    iput v2, p0, Landroid/graphics/BlurParams;->lumaContrast:F

    iput v1, p0, Landroid/graphics/BlurParams;->lumaBrightness:F

    iput v2, p0, Landroid/graphics/BlurParams;->chromaContrast:F

    iput v3, p0, Landroid/graphics/BlurParams;->blendColor:I

    iput p1, p0, Landroid/graphics/BlurParams;->radius:F

    iput p2, p0, Landroid/graphics/BlurParams;->lumaContrast:F

    iput p3, p0, Landroid/graphics/BlurParams;->lumaBrightness:F

    iput p4, p0, Landroid/graphics/BlurParams;->chromaContrast:F

    iput p5, p0, Landroid/graphics/BlurParams;->blendColor:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/BlurParams;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/BlurParams;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Landroid/graphics/BlurParams;->mode:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    iput v1, p0, Landroid/graphics/BlurParams;->radius:F

    iput v2, p0, Landroid/graphics/BlurParams;->lumaContrast:F

    iput v1, p0, Landroid/graphics/BlurParams;->lumaBrightness:F

    iput v2, p0, Landroid/graphics/BlurParams;->chromaContrast:F

    iput v3, p0, Landroid/graphics/BlurParams;->blendColor:I

    invoke-virtual {p0, p1}, Landroid/graphics/BlurParams;->set(Landroid/graphics/BlurParams;)V

    return-void
.end method

.method public static compare(Landroid/graphics/BlurParams;Landroid/graphics/BlurParams;)Z
    .locals 1
    .param p0, "lhs"    # Landroid/graphics/BlurParams;
    .param p1, "rhs"    # Landroid/graphics/BlurParams;

    .prologue
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/BlurParams;->equals(Landroid/graphics/BlurParams;)Z

    move-result v0

    goto :goto_0
.end method

.method private static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "bw"    # F

    .prologue
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static lerp(IIF)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "bw"    # F

    .prologue
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static lerp(Landroid/graphics/BlurParams;Landroid/graphics/BlurParams;F)Landroid/graphics/BlurParams;
    .locals 3
    .param p0, "a"    # Landroid/graphics/BlurParams;
    .param p1, "b"    # Landroid/graphics/BlurParams;
    .param p2, "bw"    # F

    .prologue
    new-instance v0, Landroid/graphics/BlurParams;

    invoke-direct {v0}, Landroid/graphics/BlurParams;-><init>()V

    .local v0, "c":Landroid/graphics/BlurParams;
    iget v1, p1, Landroid/graphics/BlurParams;->mode:I

    iput v1, v0, Landroid/graphics/BlurParams;->mode:I

    iget-object v1, v0, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, p0, Landroid/graphics/BlurParams;->radius:F

    iget v2, p1, Landroid/graphics/BlurParams;->radius:F

    invoke-static {v1, v2, p2}, Landroid/graphics/BlurParams;->lerp(FFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/BlurParams;->radius:F

    iget v1, p0, Landroid/graphics/BlurParams;->lumaContrast:F

    iget v2, p1, Landroid/graphics/BlurParams;->lumaContrast:F

    invoke-static {v1, v2, p2}, Landroid/graphics/BlurParams;->lerp(FFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/BlurParams;->lumaContrast:F

    iget v1, p0, Landroid/graphics/BlurParams;->lumaBrightness:F

    iget v2, p1, Landroid/graphics/BlurParams;->lumaBrightness:F

    invoke-static {v1, v2, p2}, Landroid/graphics/BlurParams;->lerp(FFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/BlurParams;->lumaBrightness:F

    iget v1, p0, Landroid/graphics/BlurParams;->chromaContrast:F

    iget v2, p1, Landroid/graphics/BlurParams;->chromaContrast:F

    invoke-static {v1, v2, p2}, Landroid/graphics/BlurParams;->lerp(FFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/BlurParams;->chromaContrast:F

    iget v1, p0, Landroid/graphics/BlurParams;->blendColor:I

    iget v2, p1, Landroid/graphics/BlurParams;->blendColor:I

    invoke-static {v1, v2, p2}, Landroid/graphics/BlurParams;->lerp(IIF)I

    move-result v1

    iput v1, v0, Landroid/graphics/BlurParams;->blendColor:I

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Landroid/graphics/BlurParams;)Z
    .locals 5
    .param p1, "rhs"    # Landroid/graphics/BlurParams;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const v4, 0x3c23d70a    # 0.01f

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/graphics/BlurParams;->mode:I

    iget v3, p1, Landroid/graphics/BlurParams;->mode:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/graphics/BlurParams;->radius:F

    iget v3, p1, Landroid/graphics/BlurParams;->radius:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    iget v2, p0, Landroid/graphics/BlurParams;->lumaContrast:F

    iget v3, p1, Landroid/graphics/BlurParams;->lumaContrast:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    iget v2, p0, Landroid/graphics/BlurParams;->lumaBrightness:F

    iget v3, p1, Landroid/graphics/BlurParams;->lumaBrightness:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    iget v2, p0, Landroid/graphics/BlurParams;->chromaContrast:F

    iget v3, p1, Landroid/graphics/BlurParams;->chromaContrast:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    iget v2, p0, Landroid/graphics/BlurParams;->blendColor:I

    iget v3, p1, Landroid/graphics/BlurParams;->blendColor:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/graphics/BlurParams;->mode:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/BlurParams;->radius:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Landroid/graphics/BlurParams;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/BlurParams;

    .prologue
    iget v0, p1, Landroid/graphics/BlurParams;->mode:I

    iput v0, p0, Landroid/graphics/BlurParams;->mode:I

    iget-object v0, p0, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/BlurParams;->radius:F

    iput v0, p0, Landroid/graphics/BlurParams;->radius:F

    iget v0, p1, Landroid/graphics/BlurParams;->lumaContrast:F

    iput v0, p0, Landroid/graphics/BlurParams;->lumaContrast:F

    iget v0, p1, Landroid/graphics/BlurParams;->lumaBrightness:F

    iput v0, p0, Landroid/graphics/BlurParams;->lumaBrightness:F

    iget v0, p1, Landroid/graphics/BlurParams;->chromaContrast:F

    iput v0, p0, Landroid/graphics/BlurParams;->chromaContrast:F

    iget v0, p1, Landroid/graphics/BlurParams;->blendColor:I

    iput v0, p0, Landroid/graphics/BlurParams;->blendColor:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Landroid/graphics/BlurParams;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/graphics/BlurParams;->radius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/graphics/BlurParams;->lumaContrast:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/graphics/BlurParams;->lumaBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/graphics/BlurParams;->chromaContrast:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/graphics/BlurParams;->blendColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
