.class public Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;
.super Ljava/lang/Object;
.source "AppSnapshotImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScreenShootAdapter;,
        Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;,
        Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;
    }
.end annotation


# static fields
.field private static final DEVIATION:I = 0x32

.field private static final DOWN:I = 0x1

.field private static final MAX_SCROLL_TIME:I = 0x8

.field private static final MOVE:I = 0x2

.field private static final SHOOT_SCREEN:I = 0x4

.field public static final SNAPSHOT_OCCUPIED_FAILED:I = 0x1

.field public static final SNAPSHOT_OOM_FAILED:I = 0x2

.field public static final SNAPSHOT_REPEAT_FAILTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AppSnapshotImpl"

.field private static final UP:I = 0x3


# instance fields
.field private context:Landroid/content/Context;

.field private currentFingerY:F

.field private endY:F

.field private forceStop:Z

.field private isEnd:Z

.field private isFinished:Z

.field private mHandler:Landroid/os/Handler;

.field private moveTimesCount:I

.field private picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

.field private pointViewInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private prepared:Z

.field private rootView:Landroid/view/View;

.field private rotation:I

.field private screenHeight:I

.field private screenShootAdapter:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScreenShootAdapter;

.field private screenShooting:Z

.field private screenWidth:I

.field private scrollShootListener:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;

.field private startY:F

.field private touchX:F

.field private touchY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decorView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenShooting:Z

    .line 47
    iput-boolean v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isEnd:Z

    .line 48
    iput-boolean v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->forceStop:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isFinished:Z

    .line 50
    iput-boolean v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->prepared:Z

    .line 52
    iput v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->moveTimesCount:I

    .line 54
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchX:F

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->pointViewInfoList:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;-><init>(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->mHandler:Landroid/os/Handler;

    .line 62
    const-string v0, "AppSnapshotImpl"

    const-string v1, " ScreenScrollShootHelper  create "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-object p1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->context:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->rootView:Landroid/view/View;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isEnd:Z

    return v0
.end method

.method static synthetic access$002(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isEnd:Z

    return p1
.end method

.method static synthetic access$100(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->pointViewInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    .prologue
    .line 20
    iget v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startY:F

    return v0
.end method

.method static synthetic access$1100(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    .prologue
    .line 20
    iget v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->endY:F

    return v0
.end method

.method static synthetic access$1200(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    .prologue
    .line 20
    iget v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->moveTimesCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Lcom/letv/leui/util/appsnapshot/PicComposeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenShooting:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->forceStop:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    .prologue
    .line 20
    iget v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenHeight:I

    return v0
.end method

.method static synthetic access$1700(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenShot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->scrollShootListener:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isFinished:Z

    return p1
.end method

.method static synthetic access$200(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->prepared:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startScroll()V

    return-void
.end method

.method static synthetic access$300(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    .prologue
    .line 20
    iget v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchX:F

    return v0
.end method

.method static synthetic access$400(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Ljava/util/ArrayList;Landroid/view/View;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->findPointViews(Ljava/util/ArrayList;Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$500(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->getPointViewsStartY(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$602(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;F)F
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;
    .param p1, "x1"    # F

    .prologue
    .line 20
    iput p1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->currentFingerY:F

    return p1
.end method

.method static synthetic access$700(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->getPointViewsEndY(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Ljava/util/ArrayList;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->findMaxDistance(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method private findMaxDistance(Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;>;"
    const-string v3, "AppSnapshotImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findMaxDistance start  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/letv/leui/util/appsnapshot/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "distance":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 482
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;

    .line 483
    .local v2, "info":Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;
    const-string v3, "AppSnapshotImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findMaxDistance info name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->view:Landroid/view/View;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  distance : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->distance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/letv/leui/util/appsnapshot/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget v3, v2, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->distance:I

    if-ge v0, v3, :cond_0

    .line 485
    iget v0, v2, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->distance:I

    .line 481
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    .end local v2    # "info":Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;
    :cond_1
    return v0
.end method

.method private findPointView(Landroid/view/View;FF)Landroid/view/View;
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 507
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 508
    check-cast v3, Landroid/view/ViewGroup;

    .line 509
    .local v3, "rootView":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 510
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 511
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 512
    .local v0, "child":Landroid/view/View;
    float-to-int v4, p2

    float-to-int v5, p3

    invoke-direct {p0, v0, v4, v5}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->inRangeOfView(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 513
    invoke-direct {p0, v0, p2, p3}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->findPointView(Landroid/view/View;FF)Landroid/view/View;

    move-result-object p1

    .line 517
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "rootView":Landroid/view/ViewGroup;
    .end local p1    # "root":Landroid/view/View;
    :cond_0
    return-object p1

    .line 510
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v3    # "rootView":Landroid/view/ViewGroup;
    .restart local p1    # "root":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private findPointViews(Ljava/util/ArrayList;Landroid/view/View;FF)V
    .locals 8
    .param p2, "root"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;",
            ">;",
            "Landroid/view/View;",
            "FF)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;>;"
    const/4 v2, 0x0

    .line 436
    .local v2, "hasChildIn":Z
    instance-of v6, p2, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v5, p2

    .line 437
    check-cast v5, Landroid/view/ViewGroup;

    .line 438
    .local v5, "rootView":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 439
    .local v1, "childCount":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 440
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, "child":Landroid/view/View;
    float-to-int v6, p3

    float-to-int v7, p4

    invoke-direct {p0, v0, v6, v7}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->inRangeOfView(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 442
    const/4 v2, 0x1

    .line 443
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->findPointViews(Ljava/util/ArrayList;Landroid/view/View;FF)V

    .line 439
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 447
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v3    # "i":I
    .end local v5    # "rootView":Landroid/view/ViewGroup;
    :cond_1
    if-nez v2, :cond_2

    .line 448
    new-instance v4, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;-><init>(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;)V

    .line 449
    .local v4, "info":Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;
    iput-object p2, v4, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->view:Landroid/view/View;

    .line 450
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    .end local v4    # "info":Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;
    :cond_2
    return-void
.end method

.method private getLocationY(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 533
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 534
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 535
    const/4 v1, 0x1

    aget v1, v0, v1

    return v1
.end method

.method private getMoveDistance(Landroid/view/View;I)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startTop"    # I

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->getLocationY(Landroid/view/View;)I

    move-result v0

    .line 525
    .local v0, "endPointViewTop":I
    const-string v1, "AppSnapshotImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " endPointViewTop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  startTop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/letv/leui/util/appsnapshot/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    sub-int v1, p2, v0

    return v1
.end method

.method private getPointViewsEndY(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;>;"
    const-string v2, "AppSnapshotImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPointViewsEndY start  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/letv/leui/util/appsnapshot/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 469
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;

    .line 470
    .local v1, "info":Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;
    iget-object v2, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->view:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->getLocationY(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->endY:I

    .line 471
    const-string v2, "AppSnapshotImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPointViewsEndY  info.endY  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->endY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/letv/leui/util/appsnapshot/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v2, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    iput v2, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->scrollEnd:I

    .line 473
    const-string v2, "AppSnapshotImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPointViewsEndY  info.scrollEnd  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->scrollEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/letv/leui/util/appsnapshot/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget v2, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->startY:I

    iget v3, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->endY:I

    sub-int/2addr v2, v3

    iget v3, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->scrollEnd:I

    iget v4, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->scrollStart:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->distance:I

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    .end local v1    # "info":Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;
    :cond_0
    return-void
.end method

.method private getPointViewsStartY(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;>;"
    const-string v2, "AppSnapshotImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPointViewsStartY start  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/letv/leui/util/appsnapshot/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 458
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;

    .line 459
    .local v1, "info":Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;
    iget-object v2, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->view:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->getLocationY(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->startY:I

    .line 460
    const-string v2, "AppSnapshotImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPointViewsStartY  info.startY  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->startY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/letv/leui/util/appsnapshot/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v2, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    iput v2, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->scrollStart:I

    .line 462
    const-string v2, "AppSnapshotImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPointViewsStartY  info.scrollStart  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->scrollStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/letv/leui/util/appsnapshot/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    .end local v1    # "info":Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;
    :cond_0
    return-void
.end method

.method private inRangeOfView(Landroid/view/View;II)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 542
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 543
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 544
    aget v1, v0, v4

    .line 545
    .local v1, "viewX":I
    aget v2, v0, v3

    .line 546
    .local v2, "viewY":I
    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    if-gt p2, v5, :cond_0

    if-lt p3, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    if-le p3, v5, :cond_1

    :cond_0
    move v3, v4

    .line 550
    :cond_1
    return v3
.end method

.method private initScreenSize()V
    .locals 3

    .prologue
    .line 585
    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 587
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenWidth:I

    .line 588
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenHeight:I

    .line 589
    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/letv/leui/util/appsnapshot/ScreenShootUtil;->getScreenRotation(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->rotation:I

    .line 590
    return-void
.end method

.method private prepare()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    const-string v0, "AppSnapshotImpl"

    const-string v1, " prepare "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isFinished:Z

    if-nez v0, :cond_1

    .line 201
    const-string v0, "AppSnapshotImpl"

    const-string v1, "ScreenScrollShootHelper is not finished , prepare failed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->scrollShootListener:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->scrollShootListener:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;

    invoke-interface {v0, v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;->onFailed(I)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->initData()V

    .line 208
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    if-nez v0, :cond_2

    .line 209
    new-instance v0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    invoke-direct {v0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    .line 211
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    new-instance v1, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$2;-><init>(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->setOnFinishListener(Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;)V

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    invoke-virtual {v0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->prepare()V

    .line 224
    iput v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->moveTimesCount:I

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->prepared:Z

    goto :goto_0
.end method

.method private screenShot(II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "top"    # I
    .param p2, "end"    # I

    .prologue
    .line 559
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->rootView:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenShootAdapter:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScreenShootAdapter;

    iget v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenHeight:I

    iget v3, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenWidth:I

    iget v4, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenWidth:I

    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenHeight:I

    if-le v4, v5, :cond_0

    const/4 v6, 0x1

    :goto_0
    iget v7, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->rotation:I

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v7}, Lcom/letv/leui/util/appsnapshot/ScreenShootUtil;->getScreenShootPic(Landroid/view/View;Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScreenShootAdapter;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private sendEventMsg(IF)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "y"    # F

    .prologue
    .line 423
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 424
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 425
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 426
    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 427
    return-void
.end method

.method private startScroll()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    .line 319
    const-string v5, "AppSnapshotImpl"

    const-string v6, " startScroll "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startY:F

    iget v6, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->endY:F

    sub-float/2addr v5, v6

    const v6, 0x453b8000    # 3000.0f

    div-float/2addr v5, v6

    mul-float/2addr v5, v10

    float-to-int v5, v5

    int-to-float v0, v5

    .line 321
    .local v0, "distance":F
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-nez v5, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 322
    :cond_0
    const-string v5, "AppSnapshotImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " distance  v : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v3, v5, :cond_2

    .line 325
    iget-boolean v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isEnd:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->forceStop:Z

    if-eqz v5, :cond_3

    .line 326
    :cond_1
    iget-boolean v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isEnd:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    if-eqz v5, :cond_2

    .line 327
    iput-boolean v11, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isEnd:Z

    .line 328
    iget-object v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    invoke-virtual {v5}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->forceStop()V

    .line 417
    :cond_2
    return-void

    .line 332
    :cond_3
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startY:F

    iput v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    .line 334
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    invoke-direct {p0, v11, v5}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->sendEventMsg(IF)V

    .line 337
    :goto_1
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    iget v6, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->endY:F

    const/high16 v7, 0x41f00000    # 30.0f

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 338
    iget-boolean v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->forceStop:Z

    if-eqz v5, :cond_6

    .line 350
    :cond_4
    move v4, v0

    .line 353
    .local v4, "v":F
    :goto_2
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    iget v6, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->endY:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 354
    iget-boolean v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->forceStop:Z

    if-eqz v5, :cond_7

    .line 370
    :cond_5
    iget-boolean v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->forceStop:Z

    if-eqz v5, :cond_a

    .line 372
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    sub-float/2addr v5, v10

    iget v6, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->endY:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_9

    .line 373
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    sub-float v2, v5, v10

    .line 374
    .local v2, "forceTouchEnd":F
    :goto_3
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    cmpl-float v5, v5, v2

    if-lez v5, :cond_b

    .line 375
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    invoke-direct {p0, v8, v5}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->sendEventMsg(IF)V

    .line 376
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    sub-float/2addr v5, v9

    iput v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    .line 378
    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 341
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "forceTouchEnd":F
    .end local v4    # "v":F
    :cond_6
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    invoke-direct {p0, v8, v5}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->sendEventMsg(IF)V

    .line 342
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    sub-float/2addr v5, v0

    iput v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    .line 344
    const-wide/16 v6, 0xa

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 345
    :catch_1
    move-exception v1

    .line 346
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 357
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "v":F
    :cond_7
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    invoke-direct {p0, v8, v5}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->sendEventMsg(IF)V

    .line 358
    cmpl-float v5, v4, v9

    if-lez v5, :cond_8

    .line 359
    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 360
    cmpg-float v5, v4, v9

    if-gtz v5, :cond_8

    const/high16 v4, 0x3f800000    # 1.0f

    .line 362
    :cond_8
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    sub-float/2addr v5, v4

    iput v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    .line 364
    const-wide/16 v6, 0xa

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 365
    :catch_2
    move-exception v1

    .line 366
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 385
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_9
    :goto_4
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    iget v6, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->endY:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_b

    .line 386
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    invoke-direct {p0, v8, v5}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->sendEventMsg(IF)V

    .line 387
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    sub-float/2addr v5, v9

    iput v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    .line 389
    const-wide/16 v6, 0xa

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 390
    :catch_3
    move-exception v1

    .line 391
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 397
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_a
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->endY:F

    iput v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    .line 398
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    invoke-direct {p0, v8, v5}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->sendEventMsg(IF)V

    .line 402
    :cond_b
    const-wide/16 v6, 0x32

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 407
    :goto_5
    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->moveTimesCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->moveTimesCount:I

    .line 410
    const/4 v5, 0x3

    iget v6, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    invoke-direct {p0, v5, v6}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->sendEventMsg(IF)V

    .line 413
    iput-boolean v11, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenShooting:Z

    .line 414
    :cond_c
    iget-boolean v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenShooting:Z

    if-nez v5, :cond_c

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 403
    :catch_4
    move-exception v1

    .line 404
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method


# virtual methods
.method public forceStop()V
    .locals 2

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isFinished:Z

    if-eqz v0, :cond_0

    .line 582
    :goto_0
    return-void

    .line 570
    :cond_0
    const-string v0, "AppSnapshotImpl"

    const-string v1, " do forceStop "

    invoke-static {v0, v1}, Lcom/letv/leui/util/appsnapshot/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->forceStop:Z

    goto :goto_0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 186
    const-string v0, "AppSnapshotImpl"

    const-string v1, " initData "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isFinished:Z

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->initScreenSize()V

    .line 191
    iget v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenHeight:I

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startY:F

    .line 192
    iget v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenHeight:I

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->endY:F

    .line 193
    iget v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenWidth:I

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchX:F

    .line 194
    iget v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startY:F

    iput v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    .line 195
    iget v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchY:F

    iput v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->currentFingerY:F

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    if-nez v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    invoke-virtual {v0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->release()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    goto :goto_0
.end method

.method public scrollShootStart(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "fullScreenShoot"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 239
    const-string v2, "AppSnapshotImpl"

    const-string v5, " scrollShootStart "

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-boolean v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isFinished:Z

    if-nez v2, :cond_1

    .line 241
    const-string v2, "AppSnapshotImpl"

    const-string v3, "ScreenScrollShootHelper is not finished , scrollShootStart failed "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->scrollShootListener:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->scrollShootListener:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;

    invoke-interface {v2, v4}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;->onFailed(I)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->prepare()V

    .line 249
    iget-boolean v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->prepared:Z

    if-nez v2, :cond_2

    .line 250
    const-string v2, "AppSnapshotImpl"

    const-string v3, "ScreenScrollShootHelper is not prepared , scrollShootStart failed "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_2
    iput-boolean v4, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isFinished:Z

    .line 256
    iput-boolean v4, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isEnd:Z

    .line 257
    iput-boolean v4, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->forceStop:Z

    .line 258
    iput v4, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->moveTimesCount:I

    .line 260
    iget-object v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->scrollShootListener:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;

    if-eqz v2, :cond_3

    .line 261
    iget-object v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->scrollShootListener:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;

    invoke-interface {v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;->onStart()V

    .line 264
    :cond_3
    const-string v5, "AppSnapshotImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " fullScreenShoot == null : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_8

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "bt":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_9

    .line 268
    move-object v0, p1

    .line 272
    :cond_4
    :goto_2
    if-nez v0, :cond_a

    .line 273
    const-string v2, "AppSnapshotImpl"

    const-string v5, " fullScreenShoot == null  do screenShot "

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenHeight:I

    invoke-direct {p0, v4, v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenShot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    :goto_3
    iget v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenWidth:I

    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenHeight:I

    if-le v2, v5, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v2, v5, :cond_5

    .line 280
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/ScreenShootUtil;->getRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 283
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenWidth:I

    if-lt v2, v5, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenHeight:I

    if-ge v2, v5, :cond_7

    .line 284
    :cond_6
    const-string v2, "AppSnapshotImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " screenWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " screenHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bt.width : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bt.getHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenWidth:I

    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 286
    const-string v2, "AppSnapshotImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenWith : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  screenHigh : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 288
    .local v1, "mCanvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->rootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 289
    iget v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenWidth:I

    iget v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenHeight:I

    if-le v2, v5, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v2, v5, :cond_7

    .line 290
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/ScreenShootUtil;->getRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 294
    .end local v1    # "mCanvas":Landroid/graphics/Canvas;
    :cond_7
    iget-object v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    invoke-virtual {v2, v0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->setFirstPicInfo(Landroid/graphics/Bitmap;)V

    .line 295
    iget-object v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    iget v6, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenWidth:I

    iget v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startY:F

    float-to-int v7, v2

    iget v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenWidth:I

    iget v8, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenHeight:I

    if-le v2, v8, :cond_b

    move v2, v3

    :goto_4
    invoke-static {v0, v6, v4, v7, v2}, Lcom/letv/leui/util/appsnapshot/ScreenShootUtil;->getScreenShootPic(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v5, v2, v4, v3, v4}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->addPic2ComposeList(Landroid/graphics/Bitmap;IZZ)V

    .line 297
    new-instance v2, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$3;

    invoke-direct {v2, p0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$3;-><init>(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)V

    invoke-virtual {v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$3;->start()V

    goto/16 :goto_0

    .end local v0    # "bt":Landroid/graphics/Bitmap;
    :cond_8
    move v2, v4

    .line 264
    goto/16 :goto_1

    .line 269
    .restart local v0    # "bt":Landroid/graphics/Bitmap;
    :cond_9
    iget-object v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenShootAdapter:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScreenShootAdapter;

    if-eqz v2, :cond_4

    .line 270
    iget-object v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenShootAdapter:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScreenShootAdapter;

    invoke-interface {v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScreenShootAdapter;->getScreenShootPic()Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_2

    .line 276
    :cond_a
    iget v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->rotation:I

    invoke-static {v0, v2}, Lcom/letv/leui/util/appsnapshot/ScreenShootUtil;->getRotateBitmapWithRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_3

    :cond_b
    move v2, v4

    .line 295
    goto :goto_4
.end method

.method public setScreenShootAdapter(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScreenShootAdapter;)V
    .locals 0
    .param p1, "screenShootAdapter"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScreenShootAdapter;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenShootAdapter:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScreenShootAdapter;

    .line 234
    return-void
.end method

.method public setScrollShootListener(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;)V
    .locals 0
    .param p1, "scrollShootListener"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->scrollShootListener:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;

    .line 230
    return-void
.end method
