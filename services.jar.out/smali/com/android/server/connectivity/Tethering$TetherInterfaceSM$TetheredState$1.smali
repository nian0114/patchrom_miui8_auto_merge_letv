.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState$1;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->cleanupUpstream()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;)V
    .locals 0

    .prologue
    .line 1304
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1308
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    :goto_0
    return-void

    .line 1309
    :catch_0
    move-exception v0

    .line 1310
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
