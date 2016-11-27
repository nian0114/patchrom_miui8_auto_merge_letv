.class public Lcom/letv/leui/app/LetvEnginerModeActivity;
.super Landroid/app/Activity;
.source "LetvEnginerModeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x10900ab

    invoke-virtual {p0, v2}, Lcom/letv/leui/app/LetvEnginerModeActivity;->setContentView(I)V

    const v2, 0x1020439

    invoke-virtual {p0, v2}, Lcom/letv/leui/app/LetvEnginerModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .local v1, "tv_open":Landroid/widget/Button;
    new-instance v2, Lcom/letv/leui/app/LetvEnginerModeActivity$1;

    invoke-direct {v2, p0}, Lcom/letv/leui/app/LetvEnginerModeActivity$1;-><init>(Lcom/letv/leui/app/LetvEnginerModeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x102043a

    invoke-virtual {p0, v2}, Lcom/letv/leui/app/LetvEnginerModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .local v0, "tv_close":Landroid/widget/Button;
    new-instance v2, Lcom/letv/leui/app/LetvEnginerModeActivity$2;

    invoke-direct {v2, p0}, Lcom/letv/leui/app/LetvEnginerModeActivity$2;-><init>(Lcom/letv/leui/app/LetvEnginerModeActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
