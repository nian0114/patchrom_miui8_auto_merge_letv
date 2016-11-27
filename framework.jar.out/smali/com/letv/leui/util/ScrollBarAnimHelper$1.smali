.class Lcom/letv/leui/util/ScrollBarAnimHelper$1;
.super Ljava/lang/Object;
.source "ScrollBarAnimHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/util/ScrollBarAnimHelper;->make(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/letv/leui/util/ScrollBarAnimHelper;Landroid/view/View;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    iput-object p2, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 7

    .prologue
    iget-object v4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v3

    .local v3, "scrollY":I
    int-to-float v4, v3

    iget-object v5, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->begin:F
    invoke-static {v5}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$000(Lcom/letv/leui/util/ScrollBarAnimHelper;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v4}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$200(Lcom/letv/leui/util/ScrollBarAnimHelper;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v4

    iget-object v5, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->mColor:I
    invoke-static {v5}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$100(Lcom/letv/leui/util/ScrollBarAnimHelper;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    iget-object v4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v4}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$200(Lcom/letv/leui/util/ScrollBarAnimHelper;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v4

    const/16 v5, 0x100

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    iget-object v4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # invokes: Lcom/letv/leui/util/ScrollBarAnimHelper;->setStatusBarWithSameColor()V
    invoke-static {v4}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$300(Lcom/letv/leui/util/ScrollBarAnimHelper;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    int-to-float v4, v3

    iget-object v5, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->end:F
    invoke-static {v5}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$400(Lcom/letv/leui/util/ScrollBarAnimHelper;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v4}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$200(Lcom/letv/leui/util/ScrollBarAnimHelper;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v4

    iget-object v5, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->mColor:I
    invoke-static {v5}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$100(Lcom/letv/leui/util/ScrollBarAnimHelper;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    const/high16 v4, 0x43800000    # 256.0f

    iget-object v5, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->end:F
    invoke-static {v5}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$400(Lcom/letv/leui/util/ScrollBarAnimHelper;)F

    move-result v5

    iget-object v6, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->begin:F
    invoke-static {v6}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$000(Lcom/letv/leui/util/ScrollBarAnimHelper;)F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    int-to-float v5, v3

    iget-object v6, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->begin:F
    invoke-static {v6}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$000(Lcom/letv/leui/util/ScrollBarAnimHelper;)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float v1, v4, v5

    .local v1, "alpha1":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_2

    float-to-int v0, v1

    .local v0, "alpha":I
    :goto_1
    iget-object v4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v4}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$200(Lcom/letv/leui/util/ScrollBarAnimHelper;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    iget-object v4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # invokes: Lcom/letv/leui/util/ScrollBarAnimHelper;->setStatusBarWithSameColor()V
    invoke-static {v4}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$300(Lcom/letv/leui/util/ScrollBarAnimHelper;)V

    mul-int/lit8 v4, v0, 0x64

    div-int/lit16 v4, v4, 0x100

    int-to-float v2, v4

    .local v2, "percent":F
    iget-object v4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->changedListener:Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;
    invoke-static {v4}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$500(Lcom/letv/leui/util/ScrollBarAnimHelper;)Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->changedListener:Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;
    invoke-static {v4}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$500(Lcom/letv/leui/util/ScrollBarAnimHelper;)Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;->onScrollChanged(F)V

    goto :goto_0

    .end local v0    # "alpha":I
    .end local v2    # "percent":F
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .end local v1    # "alpha1":F
    :cond_3
    iget-object v4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->actionBarColorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v4}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$200(Lcom/letv/leui/util/ScrollBarAnimHelper;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v4

    iget-object v5, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->mColor:I
    invoke-static {v5}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$100(Lcom/letv/leui/util/ScrollBarAnimHelper;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    iget-object v4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # invokes: Lcom/letv/leui/util/ScrollBarAnimHelper;->setStatusBarWithSameColor()V
    invoke-static {v4}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$300(Lcom/letv/leui/util/ScrollBarAnimHelper;)V

    iget-object v4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->changedListener:Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;
    invoke-static {v4}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$500(Lcom/letv/leui/util/ScrollBarAnimHelper;)Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/util/ScrollBarAnimHelper$1;->this$0:Lcom/letv/leui/util/ScrollBarAnimHelper;

    # getter for: Lcom/letv/leui/util/ScrollBarAnimHelper;->changedListener:Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;
    invoke-static {v4}, Lcom/letv/leui/util/ScrollBarAnimHelper;->access$500(Lcom/letv/leui/util/ScrollBarAnimHelper;)Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;

    move-result-object v4

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {v4, v5}, Lcom/letv/leui/util/ScrollBarAnimHelper$ScrollBarAnimChangedListener;->onScrollChanged(F)V

    goto/16 :goto_0
.end method
