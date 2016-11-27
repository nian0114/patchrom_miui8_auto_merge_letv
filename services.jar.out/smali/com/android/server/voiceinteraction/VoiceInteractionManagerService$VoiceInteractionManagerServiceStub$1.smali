.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "VoiceInteractionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    .line 967
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 968
    .local v7, "userHandle":I
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v8, v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurInteractor(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 969
    .local v1, "curInteractor":Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v8, v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurRecognizer(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 970
    .local v2, "curRecognizer":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 971
    .local v3, "hit":Z
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 972
    .local v6, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 973
    const/4 v3, 0x1

    .line 981
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v3, :cond_2

    if-eqz p4, :cond_2

    .line 985
    iget-object v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v9

    .line 987
    :try_start_0
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-virtual {v8}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->stopAllRecognitions()V

    .line 988
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v8, :cond_1

    .line 989
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v8}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->shutdownLocked()V

    .line 990
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v10, 0x0

    iput-object v10, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 992
    :cond_1
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 993
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 994
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v8, v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->resetCurAssistant(I)V

    .line 995
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v8, v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 996
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 997
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    :cond_2
    return v3

    .line 975
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 977
    const/4 v3, 0x1

    .line 978
    goto :goto_1

    .line 971
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 997
    .end local v6    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method public onHandleUserStop(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # I

    .prologue
    .line 1004
    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 8

    .prologue
    const/4 v6, 0x3

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->getChangingUserId()I

    move-result v3

    .line 1011
    .local v3, "userHandle":I
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v5

    .line 1013
    :try_start_0
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v4, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurInteractor(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 1014
    .local v1, "curInteractor":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v4, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurRecognizer(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 1015
    .local v2, "curRecognizer":Landroid/content/ComponentName;
    if-nez v2, :cond_1

    .line 1017
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->anyPackagesAppearing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1018
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v2

    .line 1019
    if-eqz v2, :cond_0

    .line 1020
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 1023
    :cond_0
    monitor-exit v5

    .line 1060
    :goto_0
    return-void

    .line 1026
    :cond_1
    if-eqz v1, :cond_4

    .line 1027
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 1028
    .local v0, "change":I
    if-ne v0, v6, :cond_2

    .line 1031
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 1032
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 1033
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v4, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    .line 1034
    monitor-exit v5

    goto :goto_0

    .line 1059
    .end local v0    # "change":I
    .end local v1    # "curInteractor":Landroid/content/ComponentName;
    .end local v2    # "curRecognizer":Landroid/content/ComponentName;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1037
    .restart local v0    # "change":I
    .restart local v1    # "curInteractor":Landroid/content/ComponentName;
    .restart local v2    # "curRecognizer":Landroid/content/ComponentName;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->isPackageAppearing(Ljava/lang/String;)I

    move-result v0

    .line 1038
    if-eqz v0, :cond_3

    .line 1041
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v6, v6, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1043
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 1046
    :cond_3
    monitor-exit v5

    goto :goto_0

    .line 1050
    .end local v0    # "change":I
    :cond_4
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 1051
    .restart local v0    # "change":I
    if-eq v0, v6, :cond_5

    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    .line 1053
    :cond_5
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    .line 1059
    :cond_6
    :goto_1
    monitor-exit v5

    goto :goto_0

    .line 1055
    :cond_7
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->isPackageModified(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1056
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;->this$1:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
