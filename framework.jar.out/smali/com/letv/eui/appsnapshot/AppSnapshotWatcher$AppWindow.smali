.class public Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$AppWindow;
.super Ljava/lang/Object;
.source "AppSnapshotWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppWindow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;

.field window:Landroid/view/IWindow;


# direct methods
.method public constructor <init>(Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;Landroid/view/IWindow;)V
    .locals 0
    .param p2, "client"    # Landroid/view/IWindow;

    .prologue
    iput-object p1, p0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$AppWindow;->this$0:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$AppWindow;->window:Landroid/view/IWindow;

    return-void
.end method
