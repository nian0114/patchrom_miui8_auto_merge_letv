.class public Lcom/android/server/pm/AdbCmdDialog;
.super Ljava/lang/Object;
.source "AdbCmdDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AdbCmdDialog$AlwaysAsk;,
        Lcom/android/server/pm/AdbCmdDialog$Allow;,
        Lcom/android/server/pm/AdbCmdDialog$Refuse;,
        Lcom/android/server/pm/AdbCmdDialog$DialogHandler;
    }
.end annotation


# static fields
.field static final ACTION_ALAWAY_ASK:I = 0x16

.field static final ACTION_ALLOWED:I = 0x2

.field static final ACTION_IGNORED_TIMEOUT:I = 0x32

.field static final ACTION_MAKE_ADBDIALOG:I = 0x8

.field static final ACTION_REFUSE:I = 0x4

.field static final AlwayAskValue:Ljava/lang/String; = "leui_install_dialog_always_ask"

.field static final DISMISS_TIMEOUT:J = 0x1b58L

.field static final isAllowValue:Ljava/lang/String; = "leui_allow_adb_install"


# instance fields
.field private acr:Lcom/android/server/pm/AdbCmdResult;

.field private installByAdb:Lcom/letv/leui/widget/LeBottomSheet;

.field private mChoice:Lcom/letv/leui/widget/LeCheckBox;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/pm/AdbCmdDialog$DialogHandler;

.field private result:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AdbCmdDialog;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/pm/AdbCmdResult;

    invoke-direct {v3}, Lcom/android/server/pm/AdbCmdResult;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/AdbCmdDialog;->acr:Lcom/android/server/pm/AdbCmdResult;

    new-instance v3, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;-><init>(Lcom/android/server/pm/AdbCmdDialog;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/pm/AdbCmdDialog;->mHandler:Lcom/android/server/pm/AdbCmdDialog$DialogHandler;

    iget-object v3, p0, Lcom/android/server/pm/AdbCmdDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "leui_install_dialog_always_ask"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .local v0, "alwayAsk":Z
    :goto_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/AdbCmdDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "leui_allow_adb_install"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/pm/AdbCmdDialog;->result:Z

    iget-object v1, p0, Lcom/android/server/pm/AdbCmdDialog;->mHandler:Lcom/android/server/pm/AdbCmdDialog$DialogHandler;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->sendEmptyMessage(I)Z

    :goto_2
    return-void

    .end local v0    # "alwayAsk":Z
    :cond_0
    move v0, v2

    goto :goto_0

    .restart local v0    # "alwayAsk":Z
    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/pm/AdbCmdDialog;->result:Z

    iget-object v1, p0, Lcom/android/server/pm/AdbCmdDialog;->mHandler:Lcom/android/server/pm/AdbCmdDialog$DialogHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/pm/AdbCmdDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/AdbCmdDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/AdbCmdDialog;)Lcom/letv/leui/widget/LeBottomSheet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/AdbCmdDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->installByAdb:Lcom/letv/leui/widget/LeBottomSheet;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/pm/AdbCmdDialog;Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/AdbCmdDialog;
    .param p1, "x1"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/AdbCmdDialog;->installByAdb:Lcom/letv/leui/widget/LeBottomSheet;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/pm/AdbCmdDialog;)Lcom/letv/leui/widget/LeCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/AdbCmdDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->mChoice:Lcom/letv/leui/widget/LeCheckBox;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/pm/AdbCmdDialog;Lcom/letv/leui/widget/LeCheckBox;)Lcom/letv/leui/widget/LeCheckBox;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/AdbCmdDialog;
    .param p1, "x1"    # Lcom/letv/leui/widget/LeCheckBox;

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/AdbCmdDialog;->mChoice:Lcom/letv/leui/widget/LeCheckBox;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/pm/AdbCmdDialog;)Lcom/android/server/pm/AdbCmdDialog$DialogHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/AdbCmdDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->mHandler:Lcom/android/server/pm/AdbCmdDialog$DialogHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/AdbCmdDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/AdbCmdDialog;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/pm/AdbCmdDialog;->result:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/pm/AdbCmdDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/AdbCmdDialog;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/pm/AdbCmdDialog;->result:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/pm/AdbCmdDialog;)Lcom/android/server/pm/AdbCmdResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/AdbCmdDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->acr:Lcom/android/server/pm/AdbCmdResult;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->installByAdb:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->installByAdb:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->disappear()V

    :cond_0
    return-void
.end method

.method public getAdbCmdResult()Lcom/android/server/pm/AdbCmdResult;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->acr:Lcom/android/server/pm/AdbCmdResult;

    return-object v0
.end method

.method public show()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->installByAdb:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->installByAdb:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->appear()V

    :cond_0
    return-void
.end method
