.class public Lcom/letv/leui/pim/lunar/LunarFestival;
.super Ljava/lang/Object;
.source "LunarFestival.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLunarFestival(Ljava/lang/String;Lcom/letv/leui/pim/lunar/Lunar;)Ljava/lang/String;
    .locals 8
    .param p0, "chinaDate"    # Ljava/lang/String;
    .param p1, "lunar"    # Lcom/letv/leui/pim/lunar/Lunar;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x1070074

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, "sLunarFestivalArray":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget-object v4, v3, v0

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "lunar_str":[Ljava/lang/String;
    aget-object v4, v1, v6

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_1

    aget-object v4, v1, v6

    invoke-virtual {p1, v4}, Lcom/letv/leui/pim/lunar/Lunar;->isBigMonth(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    .end local v1    # "lunar_str":[Ljava/lang/String;
    :goto_1
    return-object v4

    .restart local v1    # "lunar_str":[Ljava/lang/String;
    :cond_0
    aget-object v4, v1, v7

    goto :goto_1

    :cond_1
    aget-object v4, v1, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "lunar_str":[Ljava/lang/String;
    :cond_3
    const-string v4, ""

    goto :goto_1
.end method
