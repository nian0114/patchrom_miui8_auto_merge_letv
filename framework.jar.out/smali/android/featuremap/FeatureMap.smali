.class public Landroid/featuremap/FeatureMap;
.super Ljava/lang/Object;
.source "FeatureMap.java"


# static fields
.field public static final FEATURE_MAP_BLACK:Ljava/lang/String; = "FeatureTypeBlack"

.field public static final FEATURE_MAP_WHITE:Ljava/lang/String; = "FeatureTypeWhite"

.field static final TAG:Ljava/lang/String; = "FeatureMap"

.field static sInstance:Landroid/featuremap/FeatureMap;


# instance fields
.field final mAvailableFeatureMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/featuremap/FeatureMap;->mAvailableFeatureMaps:Ljava/util/HashMap;

    .line 38
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "etc"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "leuifeaturemaps"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Landroid/featuremap/FeatureMap;->mAvailableFeatureMaps:Ljava/util/HashMap;

    invoke-static {v0, v1}, Landroid/featuremap/FeatureUtils;->readFeatureMapsWithCheck(Ljava/io/File;Ljava/util/HashMap;)V

    .line 40
    return-void
.end method

.method public static getInstance()Landroid/featuremap/FeatureMap;
    .locals 2

    .prologue
    .line 28
    const-class v1, Landroid/featuremap/FeatureMap;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Landroid/featuremap/FeatureMap;->sInstance:Landroid/featuremap/FeatureMap;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroid/featuremap/FeatureMap;

    invoke-direct {v0}, Landroid/featuremap/FeatureMap;-><init>()V

    sput-object v0, Landroid/featuremap/FeatureMap;->sInstance:Landroid/featuremap/FeatureMap;

    .line 32
    :cond_0
    sget-object v0, Landroid/featuremap/FeatureMap;->sInstance:Landroid/featuremap/FeatureMap;

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getFeatureMaps()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Landroid/featuremap/FeatureMap;->mAvailableFeatureMaps:Ljava/util/HashMap;

    return-object v0
.end method
