.class public Lcom/letv/leui/util/LeTypedValue;
.super Ljava/lang/Object;
.source "LeTypedValue.java"


# static fields
.field public static final FONTSIZE:Ljava/lang/String; = "fontSizeenlarge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDimension(IFLandroid/content/res/Resources;ZI)F
    .locals 3
    .param p0, "unit"    # I
    .param p1, "value"    # F
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "isEnlarge"    # Z
    .param p4, "textSizeEnlargeMode"    # I

    .prologue
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {p0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .local v0, "desFontSize":F
    if-eqz p3, :cond_0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    invoke-static {v0, v1, p4, p2}, Lcom/letv/leui/util/LeTypedValue;->getLeCustomedTextSize(FLandroid/util/DisplayMetrics;ILandroid/content/res/Resources;)F

    move-result v0

    .end local v0    # "desFontSize":F
    :cond_0
    return v0
.end method

.method public static getLeCustomedTextSize(FLandroid/util/DisplayMetrics;ILandroid/content/res/Resources;)F
    .locals 7
    .param p0, "fontSize"    # F
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "textSizeEnlargeMode"    # I
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const v5, 0x1070076

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, "mDefinedValue":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, "config":Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .local v2, "i":I
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "rate":F
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v1, p0

    .local v1, "customedTextSize":F
    :goto_0
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-nez v5, :cond_0

    .end local p0    # "fontSize":F
    :goto_1
    return p0

    .end local v1    # "customedTextSize":F
    .restart local p0    # "fontSize":F
    :pswitch_1
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    mul-float v1, v4, p0

    .restart local v1    # "customedTextSize":F
    goto :goto_0

    .end local v1    # "customedTextSize":F
    :pswitch_2
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    mul-float v1, v4, p0

    .restart local v1    # "customedTextSize":F
    goto :goto_0

    .end local v1    # "customedTextSize":F
    :pswitch_3
    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    mul-float v1, v4, p0

    .restart local v1    # "customedTextSize":F
    goto :goto_0

    .end local v1    # "customedTextSize":F
    :pswitch_4
    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    mul-float v1, v4, p0

    .restart local v1    # "customedTextSize":F
    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
