.class public Landroid/graphics/BlurPresets;
.super Ljava/lang/Object;
.source "BlurPresets.java"


# static fields
.field private static sInstance:Landroid/graphics/BlurPresets;


# instance fields
.field private mPresets:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/BlurPresets;->sInstance:Landroid/graphics/BlurPresets;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0}, Landroid/graphics/BlurPresets;->init()V

    .line 34
    return-void
.end method

.method public static getInstance()Landroid/graphics/BlurPresets;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Landroid/graphics/BlurPresets;->sInstance:Landroid/graphics/BlurPresets;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Landroid/graphics/BlurPresets;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Landroid/graphics/BlurPresets;->sInstance:Landroid/graphics/BlurPresets;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Landroid/graphics/BlurPresets;

    invoke-direct {v0}, Landroid/graphics/BlurPresets;-><init>()V

    sput-object v0, Landroid/graphics/BlurPresets;->sInstance:Landroid/graphics/BlurPresets;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Landroid/graphics/BlurPresets;->sInstance:Landroid/graphics/BlurPresets;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 13

    .prologue
    const/high16 v1, 0x41a00000    # 20.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/graphics/BlurPresets;->mPresets:Landroid/util/SparseArray;

    .line 44
    iget-object v6, p0, Landroid/graphics/BlurPresets;->mPresets:Landroid/util/SparseArray;

    const/4 v7, 0x1

    new-instance v0, Landroid/graphics/BlurParams;

    const v2, 0x3e99999a    # 0.3f

    const v3, -0x4159999a    # -0.325f

    const v4, 0x3f333333    # 0.7f

    invoke-direct/range {v0 .. v5}, Landroid/graphics/BlurParams;-><init>(FFFFI)V

    invoke-virtual {v6, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    iget-object v0, p0, Landroid/graphics/BlurPresets;->mPresets:Landroid/util/SparseArray;

    const/4 v2, 0x2

    new-instance v6, Landroid/graphics/BlurParams;

    const/high16 v7, 0x41f00000    # 30.0f

    const v8, 0x3eb33333    # 0.35f

    const v9, -0x41666666    # -0.3f

    const v10, 0x3f4ccccd    # 0.8f

    move v11, v5

    invoke-direct/range {v6 .. v11}, Landroid/graphics/BlurParams;-><init>(FFFFI)V

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    iget-object v6, p0, Landroid/graphics/BlurPresets;->mPresets:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/BlurParams;

    const/4 v3, 0x0

    move v2, v12

    move v4, v12

    invoke-direct/range {v0 .. v5}, Landroid/graphics/BlurParams;-><init>(FFFFI)V

    invoke-virtual {v6, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    iget-object v6, p0, Landroid/graphics/BlurPresets;->mPresets:Landroid/util/SparseArray;

    const/4 v7, 0x3

    new-instance v0, Landroid/graphics/BlurParams;

    const/high16 v1, 0x41c80000    # 25.0f

    const v2, 0x3f0ccccd    # 0.55f

    const v3, 0x3e19999a    # 0.15f

    const v4, 0x3fb33333    # 1.4f

    invoke-direct/range {v0 .. v5}, Landroid/graphics/BlurParams;-><init>(FFFFI)V

    invoke-virtual {v6, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    return-void
.end method


# virtual methods
.method public resolve(I)Landroid/graphics/BlurParams;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 37
    iget-object v0, p0, Landroid/graphics/BlurPresets;->mPresets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BlurParams;

    return-object v0
.end method
