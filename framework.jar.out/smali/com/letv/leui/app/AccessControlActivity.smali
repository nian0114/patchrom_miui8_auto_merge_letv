.class public Lcom/letv/leui/app/AccessControlActivity;
.super Landroid/app/Activity;
.source "AccessControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACCESS_CONTROL_SERVICE:Ljava/lang/String; = "accesscontrol"

.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AccessControlActivity"


# instance fields
.field private mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

.field private mAcm:Landroid/app/AccessControlManager;

.field private mAm:Landroid/app/ActivityManager;

.field private mCancelButton:Landroid/widget/Button;

.field private mCheckButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/letv/leui/app/AccessControlActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private cancelAccess()V
    .locals 2

    .prologue
    const-string v0, "AccessControlActivity"

    const-string v1, "cancel access"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->reason:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/app/AccessControlActivity;->finishAndRemoveTask()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/AccessControlActivity;->moveTaskToBack(Z)Z

    invoke-virtual {p0}, Lcom/letv/leui/app/AccessControlActivity;->finish()V

    goto :goto_0
.end method

.method private checkAccess()V
    .locals 3

    .prologue
    const-string v0, "AccessControlActivity"

    const-string v1, "check access"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mAcm:Landroid/app/AccessControlManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mAcm:Landroid/app/AccessControlManager;

    iget-object v1, p0, Lcom/letv/leui/app/AccessControlActivity;->mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo$AccessControlInfo;->pkgName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/AccessControlManager;->setAppIgnoreCheckAccess(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->targetIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/letv/leui/app/AccessControlActivity;->mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo$AccessControlInfo;->requestCode:I

    iget-object v2, p0, Lcom/letv/leui/app/AccessControlActivity;->mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo$AccessControlInfo;->options:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/app/AccessControlActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo$AccessControlInfo;->reason:I

    if-nez v0, :cond_2

    const-string v0, "AccessControlActivity"

    const-string v1, "finishAndRemoveTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/letv/leui/app/AccessControlActivity;->finishAndRemoveTask()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "AccessControlActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/letv/leui/app/AccessControlActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/letv/leui/app/AccessControlActivity;->checkAccess()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/letv/leui/app/AccessControlActivity;->cancelAccess()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1020383 -> :sswitch_1
        0x10203ca -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1090073

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/AccessControlActivity;->setContentView(I)V

    const v0, 0x10203ca

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/AccessControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mCheckButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mCheckButton:Landroid/widget/Button;

    const-string v1, "check_access"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mCheckButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1020383

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/AccessControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mCancelButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mCancelButton:Landroid/widget/Button;

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "accesscontrol"

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/AccessControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AccessControlManager;

    iput-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mAcm:Landroid/app/AccessControlManager;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/AccessControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/letv/leui/app/AccessControlActivity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

    iput-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

    iget-object v0, p0, Lcom/letv/leui/app/AccessControlActivity;->mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

    if-eqz v0, :cond_0

    const-string v0, "AccessControlActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAccessCtrlInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/app/AccessControlActivity;->mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo$AccessControlInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/app/AccessControlActivity;->mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo$AccessControlInfo;->requestCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "targetIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/app/AccessControlActivity;->mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo$AccessControlInfo;->targetIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/app/AccessControlActivity;->mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo$AccessControlInfo;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/app/AccessControlActivity;->mAccessCtrlInfo:Landroid/content/pm/ActivityInfo$AccessControlInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo$AccessControlInfo;->reason:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo$AccessControlInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "AccessControlActivity"

    const-string v1, "mAccessControlInfo NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "AccessControlActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const-string v0, "AccessControlActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    const-string v0, "AccessControlActivity"

    const-string v1, "onReStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const-string v0, "AccessControlActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const-string v0, "AccessControlActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const-string v0, "AccessControlActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
