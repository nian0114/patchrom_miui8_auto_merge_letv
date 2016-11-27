.class Lcom/letv/leui/widget/BaseSwipeHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/BaseSwipeHelper;->generateDismissAnimate(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/BaseSwipeHelper;

.field final synthetic val$swap:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/BaseSwipeHelper;ZLandroid/view/View;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper$2;->this$0:Lcom/letv/leui/widget/BaseSwipeHelper;

    iput-boolean p2, p0, Lcom/letv/leui/widget/BaseSwipeHelper$2;->val$swap:Z

    iput-object p3, p0, Lcom/letv/leui/widget/BaseSwipeHelper$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper$2;->this$0:Lcom/letv/leui/widget/BaseSwipeHelper;

    iget-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper$2;->val$swap:Z

    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper$2;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper$2;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeDismissed(ZLandroid/view/View;Ljava/lang/Object;)V

    return-void
.end method
