.class Lcom/letv/leui/widget/LeActionBarBottomSlider$6;
.super Ljava/lang/Object;
.source "LeActionBarBottomSlider.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeActionBarBottomSlider;->doExitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeActionBarBottomSlider;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$6;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$6;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    # getter for: Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;
    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->access$000(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Lcom/letv/leui/widget/LeTransLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeTransLinearLayout;->invalidate()V

    return-void
.end method
