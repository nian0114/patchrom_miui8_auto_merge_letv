.class Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;
.super Ljava/lang/Object;
.source "AppSnapshotImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointViewInfo"
.end annotation


# instance fields
.field distance:I

.field endY:I

.field scrollEnd:I

.field scrollStart:I

.field startY:I

.field final synthetic this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

.field view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;
    .param p2, "x1"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$PointViewInfo;-><init>(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)V

    return-void
.end method
