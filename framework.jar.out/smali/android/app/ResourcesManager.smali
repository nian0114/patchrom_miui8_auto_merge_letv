.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final mActiveResources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field mAdjustFontScale:Z

.field private final mDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayAdjustments;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field

.field mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mResConfiguration:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    return-void
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    .prologue
    .line 55
    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 59
    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "compatConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 107
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 16
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    if-nez v13, :cond_0

    .line 272
    new-instance v13, Landroid/content/res/Configuration;

    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    .line 274
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v13

    if-nez v13, :cond_2

    if-nez p2, :cond_2

    .line 275
    sget-boolean v13, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v13, :cond_1

    const-string v13, "ResourcesManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping new config: curSeq="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    iget v15, v15, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newSeq="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1
    const/4 v13, 0x0

    .line 346
    :goto_0
    return v13

    .line 279
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v2

    .line 281
    .local v2, "changes":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->clear()V

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 284
    .local v3, "defaultDisplayMetrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 286
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 287
    or-int/lit16 v2, v2, 0xd00

    .line 293
    :cond_4
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v13, :cond_5

    .line 294
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v13}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 297
    :cond_5
    move-object/from16 v0, p1

    iget v6, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 298
    .local v6, "fontScale":F
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/app/ResourcesManager;->mAdjustFontScale:Z

    if-eqz v13, :cond_6

    .line 299
    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/Configuration;->leFontScale:F

    move-object/from16 v0, p1

    iput v13, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 300
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/res/Configuration;->leFontScale:F

    iput v14, v13, Landroid/content/res/Configuration;->fontScale:F

    .line 303
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v3, v1}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 305
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    .line 308
    const/4 v12, 0x0

    .line 310
    .local v12, "tmpConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    add-int/lit8 v8, v13, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_f

    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v13, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/ResourcesKey;

    .line 312
    .local v10, "key":Landroid/content/res/ResourcesKey;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v13, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/Resources;

    .line 313
    .local v11, "r":Landroid/content/res/Resources;
    if-eqz v11, :cond_e

    .line 314
    sget-boolean v13, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v13, :cond_7

    const-string v13, "ResourcesManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Changing resources "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " config to: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_7
    iget v4, v10, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 317
    .local v4, "displayId":I
    if-nez v4, :cond_c

    const/4 v9, 0x1

    .line 318
    .local v9, "isDefaultDisplay":Z
    :goto_2
    move-object v5, v3

    .line 319
    .local v5, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v10}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v7

    .line 320
    .local v7, "hasOverrideConfiguration":Z
    if-eqz v9, :cond_8

    if-eqz v7, :cond_d

    .line 321
    :cond_8
    if-nez v12, :cond_9

    .line 322
    new-instance v12, Landroid/content/res/Configuration;

    .end local v12    # "tmpConfig":Landroid/content/res/Configuration;
    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    .line 324
    .restart local v12    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 325
    if-nez v9, :cond_a

    .line 326
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 327
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 329
    :cond_a
    if-eqz v7, :cond_b

    .line 330
    iget-object v13, v10, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v12, v13}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 332
    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v5, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 310
    .end local v4    # "displayId":I
    .end local v5    # "dm":Landroid/util/DisplayMetrics;
    .end local v7    # "hasOverrideConfiguration":Z
    .end local v9    # "isDefaultDisplay":Z
    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 317
    .restart local v4    # "displayId":I
    :cond_c
    const/4 v9, 0x0

    goto :goto_2

    .line 334
    .restart local v5    # "dm":Landroid/util/DisplayMetrics;
    .restart local v7    # "hasOverrideConfiguration":Z
    .restart local v9    # "isDefaultDisplay":Z
    :cond_d
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto :goto_3

    .line 340
    .end local v4    # "displayId":I
    .end local v5    # "dm":Landroid/util/DisplayMetrics;
    .end local v7    # "hasOverrideConfiguration":Z
    .end local v9    # "isDefaultDisplay":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v13, v8}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_3

    .line 344
    .end local v10    # "key":Landroid/content/res/ResourcesKey;
    .end local v11    # "r":Landroid/content/res/Resources;
    :cond_f
    move-object/from16 v0, p1

    iput v6, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 346
    if-eqz v2, :cond_10

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method final applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "dm"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 85
    iput v3, p2, Landroid/content/res/Configuration;->touchscreen:I

    .line 86
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 87
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 88
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 89
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    .line 90
    .local v0, "sl":I
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    .line 91
    const/4 v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->orientation:I

    .line 92
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 99
    :goto_0
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 100
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 101
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 102
    iget v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 103
    return-void

    .line 95
    :cond_0
    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    .line 96
    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0
.end method

.method public getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 122
    if-eqz p2, :cond_0

    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    .line 124
    .local v1, "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 126
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 128
    .local v4, "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    if-eqz v4, :cond_1

    .line 129
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    .line 130
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    .line 131
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v0    # "display":Landroid/view/Display;
    :goto_1
    return-object v0

    .line 122
    .end local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_0
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    goto :goto_0

    .line 134
    .restart local v1    # "displayAdjustmentsCopy":Landroid/view/DisplayAdjustments;
    .restart local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/view/DisplayAdjustments;>;"
    .restart local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    .line 135
    .local v2, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v2, :cond_2

    .line 137
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_1

    .line 144
    .end local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 139
    .restart local v2    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v4    # "wd":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/Display;>;"
    :cond_2
    :try_start_2
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/DisplayAdjustments;

    invoke-virtual {v2, p1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 140
    .restart local v0    # "display":Landroid/view/Display;
    if-eqz v0, :cond_3

    .line 141
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDisplays:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getDisplayMetricsLocked()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 72
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-object v2, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 75
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 80
    :goto_0
    return-object v1

    .line 78
    :cond_0
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_0
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 23
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 161
    move-object/from16 v0, p7

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v17, v0

    .line 162
    .local v17, "scale":F
    if-eqz p6, :cond_0

    new-instance v15, Landroid/content/res/Configuration;

    move-object/from16 v0, p6

    invoke-direct {v15, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 164
    .local v15, "overrideConfigCopy":Landroid/content/res/Configuration;
    :goto_0
    new-instance v12, Landroid/content/res/ResourcesKey;

    move-object/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, v17

    invoke-direct {v12, v0, v1, v15, v2}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;F)V

    .line 166
    .local v12, "key":Landroid/content/res/ResourcesKey;
    monitor-enter p0

    .line 170
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/ref/WeakReference;

    .line 171
    .local v19, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/res/Resources;

    move-object/from16 v16, v20

    .line 173
    .local v16, "r":Landroid/content/res/Resources;
    :goto_1
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 177
    monitor-exit p0

    move-object/from16 v7, v16

    .line 265
    :goto_2
    return-object v7

    .line 162
    .end local v12    # "key":Landroid/content/res/ResourcesKey;
    .end local v15    # "overrideConfigCopy":Landroid/content/res/Configuration;
    .end local v16    # "r":Landroid/content/res/Resources;
    .end local v19    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 171
    .restart local v12    # "key":Landroid/content/res/ResourcesKey;
    .restart local v15    # "overrideConfigCopy":Landroid/content/res/Configuration;
    .restart local v19    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 179
    .restart local v16    # "r":Landroid/content/res/Resources;
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    new-instance v4, Landroid/content/res/AssetManager;

    invoke-direct {v4}, Landroid/content/res/AssetManager;-><init>()V

    .line 190
    .local v4, "assets":Landroid/content/res/AssetManager;
    if-eqz p1, :cond_3

    .line 191
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_3

    .line 192
    const/4 v7, 0x0

    goto :goto_2

    .line 179
    .end local v4    # "assets":Landroid/content/res/AssetManager;
    .end local v16    # "r":Landroid/content/res/Resources;
    .end local v19    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v20

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 196
    .restart local v4    # "assets":Landroid/content/res/AssetManager;
    .restart local v16    # "r":Landroid/content/res/Resources;
    .restart local v19    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_3
    if-eqz p2, :cond_5

    .line 197
    move-object/from16 v3, p2

    .local v3, "arr$":[Ljava/lang/String;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v13, :cond_5

    aget-object v18, v3, v9

    .line 198
    .local v18, "splitResDir":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_4

    .line 199
    const/4 v7, 0x0

    goto :goto_2

    .line 197
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 204
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v18    # "splitResDir":Ljava/lang/String;
    :cond_5
    if-eqz p3, :cond_6

    .line 205
    move-object/from16 v3, p3

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v13, v3

    .restart local v13    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_4
    if-ge v9, v13, :cond_6

    aget-object v10, v3, v9

    .line 206
    .local v10, "idmapPath":Ljava/lang/String;
    invoke-virtual {v4, v10}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    .line 205
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 210
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "idmapPath":Ljava/lang/String;
    .end local v13    # "len$":I
    :cond_6
    if-eqz p4, :cond_8

    .line 211
    move-object/from16 v3, p4

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v13, v3

    .restart local v13    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_5
    if-ge v9, v13, :cond_8

    aget-object v14, v3, v9

    .line 212
    .local v14, "libDir":Ljava/lang/String;
    const-string v20, ".apk"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 215
    invoke-virtual {v4, v14}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_7

    .line 216
    const-string v20, "ResourcesManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Asset path \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\' does not exist or contains no resources."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 224
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "libDir":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 226
    .local v6, "dm":Landroid/util/DisplayMetrics;
    if-nez p5, :cond_d

    const/4 v11, 0x1

    .line 227
    .local v11, "isDefaultDisplay":Z
    :goto_6
    invoke-virtual {v12}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v8

    .line 228
    .local v8, "hasOverrideConfig":Z
    if-eqz v11, :cond_9

    if-eqz v8, :cond_e

    .line 229
    :cond_9
    new-instance v5, Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 230
    .local v5, "config":Landroid/content/res/Configuration;
    if-nez v11, :cond_a

    .line 231
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 233
    :cond_a
    if-eqz v8, :cond_b

    .line 234
    iget-object v0, v12, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 241
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/app/ResourcesManager;->mAdjustFontScale:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    if-eqz v5, :cond_c

    .line 242
    iget v0, v5, Landroid/content/res/Configuration;->leFontScale:F

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 243
    if-eqz v15, :cond_c

    .line 244
    iget v0, v5, Landroid/content/res/Configuration;->leFontScale:F

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v15, Landroid/content/res/Configuration;->fontScale:F

    .line 248
    :cond_c
    new-instance v16, Landroid/content/res/Resources;

    .end local v16    # "r":Landroid/content/res/Resources;
    move-object/from16 v0, v16

    move-object/from16 v1, p7

    invoke-direct {v0, v4, v6, v5, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 252
    .restart local v16    # "r":Landroid/content/res/Resources;
    monitor-enter p0

    .line 253
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v19, Ljava/lang/ref/WeakReference;

    .line 254
    .restart local v19    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v19, :cond_f

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/res/Resources;

    move-object/from16 v7, v20

    .line 255
    .local v7, "existing":Landroid/content/res/Resources;
    :goto_8
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 258
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/AssetManager;->close()V

    .line 259
    monitor-exit p0

    goto/16 :goto_2

    .line 266
    .end local v7    # "existing":Landroid/content/res/Resources;
    .end local v19    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v20

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v20

    .line 226
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v8    # "hasOverrideConfig":Z
    .end local v11    # "isDefaultDisplay":Z
    .restart local v19    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_d
    const/4 v11, 0x0

    goto :goto_6

    .line 238
    .restart local v8    # "hasOverrideConfig":Z
    .restart local v11    # "isDefaultDisplay":Z
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .restart local v5    # "config":Landroid/content/res/Configuration;
    goto :goto_7

    .line 254
    :cond_f
    const/4 v7, 0x0

    goto :goto_8

    .line 263
    .restart local v7    # "existing":Landroid/content/res/Resources;
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v7, v16

    goto/16 :goto_2
.end method

.method setShouldAdjustFontScale(Z)V
    .locals 0
    .param p1, "adjust"    # Z

    .prologue
    .line 352
    iput-boolean p1, p0, Landroid/app/ResourcesManager;->mAdjustFontScale:Z

    .line 353
    return-void
.end method
