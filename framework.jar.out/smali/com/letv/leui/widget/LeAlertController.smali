.class public Lcom/letv/leui/widget/LeAlertController;
.super Ljava/lang/Object;
.source "LeAlertController.java"


# instance fields
.field private contentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/letv/leui/widget/LeAlertController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/letv/leui/widget/LeAlertController;->mWindow:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public installContent()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertController;->mWindow:Landroid/view/Window;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addLeuiFlags(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertController;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeAlertController;->contentView:Landroid/view/View;

    return-void
.end method
