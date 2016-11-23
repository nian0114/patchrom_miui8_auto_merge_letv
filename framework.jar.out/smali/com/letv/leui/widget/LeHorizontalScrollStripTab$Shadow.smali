.class public Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;
.super Ljava/lang/Object;
.source "LeHorizontalScrollStripTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Shadow"
.end annotation


# instance fields
.field private final mLeftShadow:Landroid/widget/ImageView;

.field private final mRightShadow:Landroid/widget/ImageView;

.field public mShadowHeight:I

.field public mShadowWidth:I

.field final synthetic this$0:Lcom/letv/leui/widget/LeHorizontalScrollStripTab;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeHorizontalScrollStripTab;Landroid/content/Context;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 660
    const v3, 0x1080545

    const v4, 0x1080546

    const/16 v5, 0x78

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;-><init>(Lcom/letv/leui/widget/LeHorizontalScrollStripTab;Landroid/content/Context;IIII)V

    .line 663
    return-void
.end method

.method constructor <init>(Lcom/letv/leui/widget/LeHorizontalScrollStripTab;Landroid/content/Context;IIII)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mLeftShadow"    # I
    .param p4, "mRightShadow"    # I
    .param p5, "mShadowWidth"    # I
    .param p6, "mShadowHeight"    # I

    .prologue
    .line 666
    iput-object p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->this$0:Lcom/letv/leui/widget/LeHorizontalScrollStripTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->mLeftShadow:Landroid/widget/ImageView;

    .line 669
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->mLeftShadow:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 670
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->mRightShadow:Landroid/widget/ImageView;

    .line 671
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->mRightShadow:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 672
    iput p5, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->mShadowWidth:I

    .line 673
    iput p6, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->mShadowHeight:I

    .line 674
    return-void
.end method


# virtual methods
.method public getLeftShadow()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->mLeftShadow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRightShadow()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->mRightShadow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getShadowWidth()I
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->mShadowWidth:I

    return v0
.end method

.method public setShadowWidth(I)Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;
    .locals 3
    .param p1, "mShadowWidth"    # I

    .prologue
    .line 690
    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->mLeftShadow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 691
    .local v0, "left":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 692
    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->mLeftShadow:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->mRightShadow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 695
    .local v1, "right":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 696
    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->mRightShadow:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    iput p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->mShadowWidth:I

    .line 699
    return-object p0
.end method
