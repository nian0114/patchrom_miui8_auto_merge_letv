.class public abstract Lcom/letv/leui/widget/LeAlertActivity;
.super Landroid/app/Activity;
.source "LeAlertActivity.java"


# instance fields
.field protected mAlert:Lcom/letv/leui/widget/LeAlertController;

.field protected mAlertParams:Lcom/letv/leui/widget/LeAlertParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeAlertActivity;->finish()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeAlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeAlertActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/letv/leui/widget/LeAlertController;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/letv/leui/widget/LeAlertController;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertActivity;->mAlert:Lcom/letv/leui/widget/LeAlertController;

    new-instance v0, Lcom/letv/leui/widget/LeAlertParams;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LeAlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertActivity;->mAlertParams:Lcom/letv/leui/widget/LeAlertParams;

    return-void
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertActivity;->mAlertParams:Lcom/letv/leui/widget/LeAlertParams;

    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertActivity;->mAlert:Lcom/letv/leui/widget/LeAlertController;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeAlertParams;->apply(Lcom/letv/leui/widget/LeAlertController;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertActivity;->mAlert:Lcom/letv/leui/widget/LeAlertController;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeAlertController;->installContent()V

    return-void
.end method
