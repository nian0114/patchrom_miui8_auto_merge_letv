.class Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientMonitor"
.end annotation


# instance fields
.field owner:Ljava/lang/String;

.field receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field restricted:Z

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;

.field token:Landroid/os/IBinder;

.field userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .locals 3
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "userId"    # I
    .param p5, "restricted"    # Z
    .param p6, "owner"    # Ljava/lang/String;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 724
    iput-object p3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 725
    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    .line 726
    iput-boolean p5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->restricted:Z

    .line 727
    iput-object p6, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->owner:Ljava/lang/String;

    .line 729
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 714
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendRemoved(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B

    .prologue
    .line 714
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendFidoAuthenticated(II[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 714
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAuthenticated(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 714
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendEnrollResult(III)Z

    move-result v0

    return v0
.end method

.method private sendAcquired(I)Z
    .locals 6
    .param p1, "acquiredInfo"    # I

    .prologue
    const/4 v1, 0x1

    .line 865
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v2, :cond_1

    .line 876
    :cond_0
    :goto_0
    return v1

    .line 867
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    const/4 v1, 0x0

    .line 875
    if-nez p1, :cond_0

    .line 876
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;)V

    goto :goto_0

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FingerprintService"

    const-string v3, "Failed to invoke sendAcquired:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 875
    if-nez p1, :cond_0

    .line 876
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;)V

    goto :goto_0

    .line 875
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-nez p1, :cond_2

    .line 876
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;)V

    :cond_2
    throw v1
.end method

.method private sendAuthenticated(II)Z
    .locals 10
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 806
    const/4 v9, 0x0

    .line 807
    .local v9, "result":Z
    if-eqz p1, :cond_0

    const/4 v6, 0x1

    .line 808
    .local v6, "authenticated":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_3

    .line 810
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xfc

    invoke-static {v0, v1, v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 812
    if-nez v6, :cond_1

    .line 813
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V

    .line 815
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintReport;->getInstance(Landroid/content/Context;)Lcom/android/server/fingerprint/FingerprintReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintReport;->unlockFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :goto_1
    if-nez p1, :cond_4

    .line 840
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    invoke-static {v0, p0}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v0

    or-int/2addr v9, v0

    .line 858
    :goto_2
    return v9

    .line 807
    .end local v6    # "authenticated":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 819
    .restart local v6    # "authenticated":Z
    :cond_1
    :try_start_1
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticated(owner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->owner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->restricted:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    move-object v8, v0

    .line 824
    .local v8, "fp":Landroid/hardware/fingerprint/Fingerprint;
    :goto_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3, v8}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;)V

    .line 826
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintReport;->getInstance(Landroid/content/Context;)Lcom/android/server/fingerprint/FingerprintReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintReport;->unlockSuccess()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 829
    .end local v8    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :catch_0
    move-exception v7

    .line 830
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "FingerprintService"

    const-string v1, "Failed to notify Authenticated:"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    const/4 v9, 0x1

    .line 832
    goto :goto_1

    .line 822
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    .line 834
    :cond_3
    const/4 v9, 0x1

    goto :goto_1

    .line 855
    :cond_4
    or-int/lit8 v9, v9, 0x1

    .line 856
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttempts()V
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)V

    goto :goto_2
.end method

.method private sendEnrollResult(III)Z
    .locals 8
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .prologue
    const/4 v7, 0x1

    .line 790
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_0

    .line 798
    :goto_0
    return v7

    .line 791
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintSuccess(Landroid/content/Context;)V

    .line 792
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xfb

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 794
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    if-nez p3, :cond_1

    move v1, v7

    :goto_1
    move v7, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to notify EnrollResult:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendError(I)Z
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 885
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_0

    .line 887
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to invoke sendError:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendFidoAuthenticated(II[B)Z
    .locals 10
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I
    .param p3, "uvt"    # [B

    .prologue
    .line 896
    const/4 v9, 0x0

    .line 897
    .local v9, "result":Z
    if-eqz p1, :cond_0

    const/4 v7, 0x1

    .line 898
    .local v7, "authenticated":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_2

    .line 900
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xfc

    invoke-static {v1, v2, v7}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 902
    if-nez v7, :cond_1

    .line 903
    const-string v1, "FingerprintService"

    const-string v2, "onAuthenticationFailed:"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :goto_1
    if-nez p1, :cond_3

    .line 917
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    invoke-static {v1, p0}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v1

    or-int/2addr v9, v1

    .line 922
    :goto_2
    return v9

    .line 897
    .end local v7    # "authenticated":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 906
    .restart local v7    # "authenticated":Z
    :cond_1
    :try_start_1
    new-instance v0, Landroid/hardware/fingerprint/FingerprintFido;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    move v2, p2

    move v3, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintFido;-><init>(Ljava/lang/CharSequence;IIJ[B)V

    .line 907
    .local v0, "fp":Landroid/hardware/fingerprint/FingerprintFido;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFidoSucceeded(JLandroid/hardware/fingerprint/FingerprintFido;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 909
    .end local v0    # "fp":Landroid/hardware/fingerprint/FingerprintFido;
    :catch_0
    move-exception v8

    .line 910
    .local v8, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to notify Authenticated:"

    invoke-static {v1, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 911
    const/4 v9, 0x1

    .line 912
    goto :goto_1

    .line 914
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v9, 0x1

    goto :goto_1

    .line 919
    :cond_3
    or-int/lit8 v9, v9, 0x1

    .line 920
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttempts()V
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)V

    goto :goto_2
.end method

.method private sendRemoved(II)Z
    .locals 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 776
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v3, :cond_1

    .line 783
    :cond_0
    :goto_0
    return v1

    .line 778
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    if-eqz p1, :cond_0

    move v1, v2

    goto :goto_0

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v3, "Failed to notify Removed:"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 783
    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 750
    iput-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 752
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mTakePictureClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$600(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopTakePicture(Landroid/os/IBinder;Z)V

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    invoke-static {v0, p0}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 757
    iput-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 758
    return-void
.end method

.method public destroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 736
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :goto_0
    iput-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 745
    :cond_0
    iput-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 746
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 764
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    invoke-static {v0, p0}, Lcom/android/server/fingerprint/FingerprintService;->access$700(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 770
    return-void

    .line 768
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
