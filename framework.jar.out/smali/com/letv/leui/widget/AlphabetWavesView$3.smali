.class Lcom/letv/leui/widget/AlphabetWavesView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AlphabetWavesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/AlphabetWavesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/AlphabetWavesView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/AlphabetWavesView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/AlphabetWavesView$3;->this$0:Lcom/letv/leui/widget/AlphabetWavesView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView$3;->this$0:Lcom/letv/leui/widget/AlphabetWavesView;

    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView$3;->this$0:Lcom/letv/leui/widget/AlphabetWavesView;

    # getter for: Lcom/letv/leui/widget/AlphabetWavesView;->mShowingPrimary:Z
    invoke-static {v0}, Lcom/letv/leui/widget/AlphabetWavesView;->access$300(Lcom/letv/leui/widget/AlphabetWavesView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/letv/leui/widget/AlphabetWavesView;->mShowingPrimary:Z
    invoke-static {v1, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->access$302(Lcom/letv/leui/widget/AlphabetWavesView;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
