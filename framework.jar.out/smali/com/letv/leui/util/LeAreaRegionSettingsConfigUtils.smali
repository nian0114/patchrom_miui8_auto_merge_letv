.class public Lcom/letv/leui/util/LeAreaRegionSettingsConfigUtils;
.super Ljava/lang/Object;
.source "LeAreaRegionSettingsConfigUtils.java"


# static fields
.field public static final REGION_CHINA:Ljava/lang/String; = "CN"

.field public static final REGION_HONGKONG:Ljava/lang/String; = "HK"

.field public static final REGION_INDIA:Ljava/lang/String; = "IN"

.field public static final REGION_OTHER:Ljava/lang/String; = "NULL"

.field public static final REGION_THAILAND:Ljava/lang/String; = "TH"

.field public static final REGION_UNITED_STATES:Ljava/lang/String; = "US"

.field private static sRegionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/letv/leui/util/LeAreaRegionSettingsConfigUtils;->sRegionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRestrictedRegion(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "CN"

    invoke-static {p0, v0}, Lcom/letv/leui/util/LeAreaRegionSettingsConfigUtils;->matchRegion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IN"

    invoke-static {p0, v0}, Lcom/letv/leui/util/LeAreaRegionSettingsConfigUtils;->matchRegion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static matchRegion(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    sget-object v3, Lcom/letv/leui/util/LeAreaRegionSettingsConfigUtils;->sRegionMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Lcom/letv/leui/util/LeAreaRegionSettingsConfigUtils;->sRegionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "leui_country_area_region_settings"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "regionValue":Ljava/lang/String;
    if-nez v0, :cond_2

    invoke-static {}, Lcom/letv/leui/util/LeSystemProperties;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Lcom/letv/leui/util/LeAreaRegionSettingsConfigUtils;->sRegionMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/letv/leui/util/LeAreaRegionSettingsConfigUtils;->sRegionMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
