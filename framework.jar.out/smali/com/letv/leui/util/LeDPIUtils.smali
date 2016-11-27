.class public Lcom/letv/leui/util/LeDPIUtils;
.super Ljava/lang/Object;
.source "LeDPIUtils.java"


# static fields
.field private static final whiteList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.vending"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.gms"

    aput-object v2, v0, v1

    sput-object v0, Lcom/letv/leui/util/LeDPIUtils;->whiteList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDPIByPackageName(Landroid/util/DisplayMetrics;)V
    .locals 7
    .param p0, "outMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "currentPackageName":Ljava/lang/String;
    sget-object v0, Lcom/letv/leui/util/LeDPIUtils;->whiteList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .local v2, "density":I
    int-to-float v6, v2

    iput v6, p0, Landroid/util/DisplayMetrics;->density:F

    mul-int/lit16 v6, v2, 0xa0

    iput v6, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v6, p0, Landroid/util/DisplayMetrics;->density:F

    iput v6, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v6, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    iput v6, p0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v6, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    iput v6, p0, Landroid/util/DisplayMetrics;->ydpi:F

    iget v6, p0, Landroid/util/DisplayMetrics;->density:F

    iput v6, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iget v6, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v6, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iget v6, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v6, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iget v6, p0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v6, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iget v6, p0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v6, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    .end local v2    # "density":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method
