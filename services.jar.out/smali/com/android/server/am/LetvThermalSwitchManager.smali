.class Lcom/android/server/am/LetvThermalSwitchManager;
.super Ljava/lang/Object;
.source "LetvThermalSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;,
        Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;,
        Lcom/android/server/am/LetvThermalSwitchManager$AppState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThermalSwitchManager"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHost:Lcom/android/server/am/LetvThermalSwitchManager;

.field private mLastPackage:Ljava/lang/String;

.field private mShouldShowNotice:Z

.field private mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

.field private mWaitingUserToChoose:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mShouldShowNotice:Z

    .line 263
    new-instance v0, Lcom/android/server/am/LetvThermalSwitchManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/LetvThermalSwitchManager$1;-><init>(Lcom/android/server/am/LetvThermalSwitchManager;)V

    iput-object v0, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object p1, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mContext:Landroid/content/Context;

    .line 48
    sget-object v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Init:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    iput-object v0, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ThermalSwitchManager"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 50
    iget-object v0, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;

    iget-object v1, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;-><init>(Lcom/android/server/am/LetvThermalSwitchManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mHandler:Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;

    .line 52
    iput-object p0, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mHost:Lcom/android/server/am/LetvThermalSwitchManager;

    .line 53
    const-string v0, "ThermalSwitchManager"

    const-string v1, "Created and started thermal switch thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-direct {p0}, Lcom/android/server/am/LetvThermalSwitchManager;->changeToDynamicThermalManagement()V

    .line 55
    sget-object v0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Enabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    iput-object v0, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    .line 57
    const-string v0, "ThermalSwitchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init thermal status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/LetvThermalSwitchManager;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LetvThermalSwitchManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/am/LetvThermalSwitchManager;Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/LetvThermalSwitchManager;
    .param p1, "x1"    # Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/am/LetvThermalSwitchManager;)Lcom/android/server/am/LetvThermalSwitchManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LetvThermalSwitchManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mHost:Lcom/android/server/am/LetvThermalSwitchManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/LetvThermalSwitchManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LetvThermalSwitchManager;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mShouldShowNotice:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/am/LetvThermalSwitchManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/LetvThermalSwitchManager;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mShouldShowNotice:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/am/LetvThermalSwitchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/LetvThermalSwitchManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/server/am/LetvThermalSwitchManager;->showToastNotice()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/LetvThermalSwitchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/LetvThermalSwitchManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/server/am/LetvThermalSwitchManager;->changeToThermalProtection()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/LetvThermalSwitchManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/LetvThermalSwitchManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/server/am/LetvThermalSwitchManager;->changeToDynamicThermalManagement()V

    return-void
.end method

.method private changeToDynamicThermalManagement()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "ThermalSwitchManager"

    const-string v1, "changeToDynamicThermalManagement"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v0, "persist.sys.qti_case"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private changeToThermalProtection()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "ThermalSwitchManager"

    const-string v1, "changeToThermalProtection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v0, "persist.sys.qti_case"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method private execShellCommand(Ljava/lang/String;)V
    .locals 8
    .param p1, "shellCommand"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v4, 0x0

    .line 112
    .local v4, "proc":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 115
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 116
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    if-eqz v3, :cond_0

    .line 118
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 119
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 120
    const-string v5, "exit\n"

    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 122
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    :cond_0
    if-eqz v3, :cond_1

    .line 130
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 143
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I

    move-result v5

    if-eqz v5, :cond_2

    .line 144
    const-string v5, "ThermalSwitchManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "execCommandLine() Err exit code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v2, v3

    .line 146
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :cond_3
    :goto_2
    return-void

    .line 131
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "ThermalSwitchManager"

    const-string v6, "execCommandLine() IO Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v1

    .line 125
    .local v1, "ex":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v5, "ThermalSwitchManager"

    const-string v6, "execCommandLine() IO Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    if-eqz v2, :cond_3

    .line 130
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 131
    :catch_2
    move-exception v0

    .line 132
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "ThermalSwitchManager"

    const-string v6, "execCommandLine() IO Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_4

    .line 130
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 133
    :cond_4
    :goto_5
    throw v5

    .line 131
    :catch_3
    move-exception v0

    .line 132
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "ThermalSwitchManager"

    const-string v7, "execCommandLine() IO Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "ThermalSwitchManager"

    const-string v6, "execCommandLine() Interrupted Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 128
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 124
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_3
.end method

.method private showToastNotice()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mContext:Landroid/content/Context;

    const v1, 0x104070d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    return-void
.end method


# virtual methods
.method public notifyAppState(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/LetvThermalSwitchManager$AppState;)V
    .locals 5
    .param p1, "appPackage"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "appState"    # Lcom/android/server/am/LetvThermalSwitchManager$AppState;

    .prologue
    .line 66
    sget-object v2, Lcom/android/server/am/LetvThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", className: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thermal state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    sget-object v3, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Init:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    if-ne v2, v3, :cond_1

    .line 71
    monitor-exit p0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 73
    :cond_1
    move-object v1, p1

    .line 74
    .local v1, "packageName":Ljava/lang/String;
    :try_start_1
    sget-object v2, Lcom/android/server/am/LetvThermalSwitchManager$AppState;->Resumed:Lcom/android/server/am/LetvThermalSwitchManager$AppState;

    if-ne p3, v2, :cond_7

    .line 75
    iget-boolean v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mWaitingUserToChoose:Z

    if-eqz v2, :cond_2

    .line 76
    monitor-exit p0

    goto :goto_0

    .line 77
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mShouldShowNotice:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    sget-object v3, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Enabling:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    sget-object v3, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Enabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    if-ne v2, v3, :cond_6

    .line 78
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mWaitingUserToChoose:Z

    if-nez v2, :cond_5

    .line 79
    iget-boolean v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mShouldShowNotice:Z

    if-eqz v2, :cond_4

    .line 80
    iput-object p1, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mLastPackage:Ljava/lang/String;

    .line 81
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set mLastPackage to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mLastPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mHandler:Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;

    invoke-virtual {v2}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 84
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 85
    sget-object v2, Lcom/android/server/am/LetvThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 86
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 87
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 107
    .end local v0    # "msg":Landroid/os/Message;
    :cond_5
    :goto_1
    monitor-exit p0

    goto/16 :goto_0

    .line 89
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    sget-object v3, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Disabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    if-ne v2, v3, :cond_5

    .line 90
    iget-object v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mHandler:Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;

    # invokes: Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->stopTimer()V
    invoke-static {v2}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->access$000(Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;)V

    .line 91
    iget-object v3, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mHandler:Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;

    sget-object v2, Lcom/android/server/am/LetvThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->startTimer(I)V
    invoke-static {v3, v2}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->access$100(Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;I)V

    goto :goto_1

    .line 93
    :cond_7
    sget-object v2, Lcom/android/server/am/LetvThermalSwitchManager$AppState;->Paused:Lcom/android/server/am/LetvThermalSwitchManager$AppState;

    if-eq p3, v2, :cond_5

    .line 94
    sget-object v2, Lcom/android/server/am/LetvThermalSwitchManager$AppState;->Dead:Lcom/android/server/am/LetvThermalSwitchManager$AppState;

    if-ne p3, v2, :cond_5

    .line 95
    const-string v2, "ThermalSwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is Dead, mLastPackage is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mLastPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mLastPackage:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mLastPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 97
    iget-boolean v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mWaitingUserToChoose:Z

    if-nez v2, :cond_8

    .line 98
    iget-object v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mHandler:Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;

    # invokes: Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->stopTimer()V
    invoke-static {v2}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->access$000(Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;)V

    .line 99
    iget-object v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mHandler:Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->startTimer(I)V
    invoke-static {v2, v3}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->access$100(Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;I)V

    .line 101
    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mShouldShowNotice:Z

    .line 102
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mLastPackage:Ljava/lang/String;

    .line 103
    const-string v2, "ThermalSwitchManager"

    const-string v3, "mLastPackage is dead,set mShouldAskUser to true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 61
    const-string v0, "ThermalSwitchManager"

    const-string v1, "systemReady, register ACTION_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager;->mHandler:Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 63
    return-void
.end method
