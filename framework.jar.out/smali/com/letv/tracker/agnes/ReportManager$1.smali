.class Lcom/letv/tracker/agnes/ReportManager$1;
.super Ljava/lang/Object;
.source "ReportManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/tracker/agnes/ReportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/tracker/agnes/ReportManager;


# direct methods
.method constructor <init>(Lcom/letv/tracker/agnes/ReportManager;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/letv/tracker/agnes/ReportManager$1;->this$0:Lcom/letv/tracker/agnes/ReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager$1;->this$0:Lcom/letv/tracker/agnes/ReportManager;

    invoke-static {p2}, Lcom/android/letv/agnes/service/beans/IReportService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/letv/agnes/service/beans/IReportService;

    move-result-object v1

    # setter for: Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/android/letv/agnes/service/beans/IReportService;
    invoke-static {v0, v1}, Lcom/letv/tracker/agnes/ReportManager;->access$002(Lcom/letv/tracker/agnes/ReportManager;Lcom/android/letv/agnes/service/beans/IReportService;)Lcom/android/letv/agnes/service/beans/IReportService;

    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 67
    const-string v0, "AgnesClient_ReportManager"

    const-string v1, ""

    const-string v2, "Connected with agnes service!"

    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/letv/tracker/agnes/ReportManager$1$1;

    invoke-direct {v1, p0}, Lcom/letv/tracker/agnes/ReportManager$1$1;-><init>(Lcom/letv/tracker/agnes/ReportManager$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager$1;->this$0:Lcom/letv/tracker/agnes/ReportManager;

    # setter for: Lcom/letv/tracker/agnes/ReportManager;->isBind:Z
    invoke-static {v0, v1}, Lcom/letv/tracker/agnes/ReportManager;->access$102(Lcom/letv/tracker/agnes/ReportManager;Z)Z

    .line 88
    sput-boolean v1, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 89
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager$1;->this$0:Lcom/letv/tracker/agnes/ReportManager;

    # setter for: Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;
    invoke-static {v0, v2}, Lcom/letv/tracker/agnes/ReportManager;->access$202(Lcom/letv/tracker/agnes/ReportManager;Landroid/content/Intent;)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager$1;->this$0:Lcom/letv/tracker/agnes/ReportManager;

    # setter for: Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/android/letv/agnes/service/beans/IReportService;
    invoke-static {v0, v2}, Lcom/letv/tracker/agnes/ReportManager;->access$002(Lcom/letv/tracker/agnes/ReportManager;Lcom/android/letv/agnes/service/beans/IReportService;)Lcom/android/letv/agnes/service/beans/IReportService;

    .line 91
    const-string v0, "AgnesClient_ReportManager"

    const-string v1, ""

    const-string v2, "Disconnected with agnes service!"

    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
