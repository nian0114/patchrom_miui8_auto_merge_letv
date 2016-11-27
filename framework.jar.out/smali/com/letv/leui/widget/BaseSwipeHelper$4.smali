.class Lcom/letv/leui/widget/BaseSwipeHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/BaseSwipeHelper;->generateSwitchAnimate(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/BaseSwipeHelper;

.field final synthetic val$isSwitched:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/BaseSwipeHelper;ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper$4;->this$0:Lcom/letv/leui/widget/BaseSwipeHelper;

    iput-boolean p2, p0, Lcom/letv/leui/widget/BaseSwipeHelper$4;->val$isSwitched:Z

    iput-object p3, p0, Lcom/letv/leui/widget/BaseSwipeHelper$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper$4;->this$0:Lcom/letv/leui/widget/BaseSwipeHelper;

    iget-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper$4;->val$isSwitched:Z

    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper$4;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitched(ZLjava/lang/Object;)V

    .line 1126
    return-void
.end method
