.class Lcom/android/server/policy/LightSensorListener$1;
.super Ljava/lang/Object;
.source "LightSensorListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LightSensorListener;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LightSensorListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LightSensorListener;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/server/policy/LightSensorListener$1;->this$0:Lcom/android/server/policy/LightSensorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/policy/LightSensorListener$1;->this$0:Lcom/android/server/policy/LightSensorListener;

    # getter for: Lcom/android/server/policy/LightSensorListener;->mSensorOn:Z
    invoke-static {v0}, Lcom/android/server/policy/LightSensorListener;->access$000(Lcom/android/server/policy/LightSensorListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/server/policy/LightSensorListener$1;->this$0:Lcom/android/server/policy/LightSensorListener;

    # getter for: Lcom/android/server/policy/LightSensorListener;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/LightSensorListener;->access$100(Lcom/android/server/policy/LightSensorListener;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/LightSensorListener$1;->this$0:Lcom/android/server/policy/LightSensorListener;

    # getter for: Lcom/android/server/policy/LightSensorListener;->mSensorOn:Z
    invoke-static {v0}, Lcom/android/server/policy/LightSensorListener;->access$000(Lcom/android/server/policy/LightSensorListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/server/policy/LightSensorListener$1;->this$0:Lcom/android/server/policy/LightSensorListener;

    invoke-virtual {v0}, Lcom/android/server/policy/LightSensorListener;->disable()V

    .line 68
    iget-object v2, p0, Lcom/android/server/policy/LightSensorListener$1;->this$0:Lcom/android/server/policy/LightSensorListener;

    iget-object v0, p0, Lcom/android/server/policy/LightSensorListener$1;->this$0:Lcom/android/server/policy/LightSensorListener;

    # getter for: Lcom/android/server/policy/LightSensorListener;->mThreshold:I
    invoke-static {v0}, Lcom/android/server/policy/LightSensorListener;->access$200(Lcom/android/server/policy/LightSensorListener;)I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/server/policy/LightSensorListener;->setAdaptiveDisplay(Z)V
    invoke-static {v2, v0}, Lcom/android/server/policy/LightSensorListener;->access$300(Lcom/android/server/policy/LightSensorListener;Z)V

    .line 70
    :cond_0
    monitor-exit v1

    .line 72
    :cond_1
    return-void

    .line 68
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
