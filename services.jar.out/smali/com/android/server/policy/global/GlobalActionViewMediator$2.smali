.class Lcom/android/server/policy/global/GlobalActionViewMediator$2;
.super Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;
.source "GlobalActionViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseSystemDialog()V
    .locals 2

    .prologue
    const-string v0, "GlobalAction"

    const-string v1, "onCloseSystemDialog()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewMediator;->mIsActionStart:Z
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->access$200(Lcom/android/server/policy/global/GlobalActionViewMediator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    # invokes: Lcom/android/server/policy/global/GlobalActionViewMediator;->hideLocked()V
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->access$300(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    :cond_0
    return-void
.end method
