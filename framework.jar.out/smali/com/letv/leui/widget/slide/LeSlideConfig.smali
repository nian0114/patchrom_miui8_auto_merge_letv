.class public Lcom/letv/leui/widget/slide/LeSlideConfig;
.super Ljava/lang/Object;
.source "LeSlideConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/slide/LeSlideConfig$1;,
        Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    }
.end annotation


# static fields
.field public static final SLIDE_DEFAULT_SHADOW_Z:I = 0x10

.field public static final SLIDE_DISTANCE_THRESHOLD:F = 0.25f

.field public static final SLIDE_DURATION:I = 0x1f4

.field public static final SLIDE_LEFT:I


# instance fields
.field private colorPrimary:I

.field private colorSecondary:I

.field private distanceThreshold:F

.field private edgeOnly:Z

.field private edgeSize:F

.field private listener:Lcom/letv/leui/widget/slide/LeSlideListener;

.field private parallaxOffset:I

.field private position:I

.field private sensitivity:F

.field private slideDuration:I

.field private touchSize:F

.field private velocityThreshold:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->colorPrimary:I

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->colorSecondary:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->touchSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->sensitivity:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->velocityThreshold:F

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->distanceThreshold:F

    iput-boolean v1, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->edgeOnly:Z

    const v0, 0x3e3851ec    # 0.18f

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->edgeSize:F

    const/16 v0, 0x64

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->parallaxOffset:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->slideDuration:I

    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->position:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/slide/LeSlideConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/leui/widget/slide/LeSlideConfig$1;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlideConfig;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/letv/leui/widget/slide/LeSlideConfig;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideConfig;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->slideDuration:I

    return p1
.end method

.method static synthetic access$102(Lcom/letv/leui/widget/slide/LeSlideConfig;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideConfig;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->colorPrimary:I

    return p1
.end method

.method static synthetic access$1102(Lcom/letv/leui/widget/slide/LeSlideConfig;Lcom/letv/leui/widget/slide/LeSlideListener;)Lcom/letv/leui/widget/slide/LeSlideListener;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideConfig;
    .param p1, "x1"    # Lcom/letv/leui/widget/slide/LeSlideListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->listener:Lcom/letv/leui/widget/slide/LeSlideListener;

    return-object p1
.end method

.method static synthetic access$202(Lcom/letv/leui/widget/slide/LeSlideConfig;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideConfig;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->colorSecondary:I

    return p1
.end method

.method static synthetic access$302(Lcom/letv/leui/widget/slide/LeSlideConfig;F)F
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideConfig;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->touchSize:F

    return p1
.end method

.method static synthetic access$402(Lcom/letv/leui/widget/slide/LeSlideConfig;F)F
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideConfig;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->sensitivity:F

    return p1
.end method

.method static synthetic access$502(Lcom/letv/leui/widget/slide/LeSlideConfig;F)F
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideConfig;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->velocityThreshold:F

    return p1
.end method

.method static synthetic access$602(Lcom/letv/leui/widget/slide/LeSlideConfig;F)F
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideConfig;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->distanceThreshold:F

    return p1
.end method

.method static synthetic access$702(Lcom/letv/leui/widget/slide/LeSlideConfig;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideConfig;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->edgeOnly:Z

    return p1
.end method

.method static synthetic access$802(Lcom/letv/leui/widget/slide/LeSlideConfig;F)F
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideConfig;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->edgeSize:F

    return p1
.end method

.method static synthetic access$902(Lcom/letv/leui/widget/slide/LeSlideConfig;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideConfig;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->parallaxOffset:I

    return p1
.end method


# virtual methods
.method public areStatusBarColorsValid()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->colorPrimary:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->colorSecondary:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDistanceThreshold()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->distanceThreshold:F

    return v0
.end method

.method public getEdgeSize(F)F
    .locals 1
    .param p1, "size"    # F

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->edgeSize:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public getListener()Lcom/letv/leui/widget/slide/LeSlideListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->listener:Lcom/letv/leui/widget/slide/LeSlideListener;

    return-object v0
.end method

.method public getParallaxOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->parallaxOffset:I

    return v0
.end method

.method public getPrimaryColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->colorPrimary:I

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->colorSecondary:I

    return v0
.end method

.method public getSensitivity()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->sensitivity:F

    return v0
.end method

.method public getSlideDuration()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->slideDuration:I

    return v0
.end method

.method public getTouchSize()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->touchSize:F

    return v0
.end method

.method public getVelocityThreshold()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->velocityThreshold:F

    return v0
.end method

.method public isEdgeOnly()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig;->edgeOnly:Z

    return v0
.end method
