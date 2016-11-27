.class final Lcom/letv/leui/widget/slide/LeSlide$2;
.super Ljava/lang/Object;
.source "LeSlide.java"

# interfaces
.implements Lcom/letv/leui/widget/slide/LeSlideInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/slide/LeSlide;->attach(Landroid/app/Activity;II)Lcom/letv/leui/widget/slide/LeSlideInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$panel:Lcom/letv/leui/widget/slide/LeSlideLayout;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/slide/LeSlideLayout;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlide$2;->val$panel:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSliding()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$2;->val$panel:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->isSliding()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$2;->val$panel:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->lock()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$2;->val$panel:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->onBackPressed()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$2;->val$panel:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->setInitializeState()V

    :cond_0
    return-void
.end method

.method public setEnableSlideToOpen(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$2;->val$panel:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->setEnableSlideToOpen(Z)V

    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$2;->val$panel:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->unlock()V

    return-void
.end method
