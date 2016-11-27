.class public Lcom/letv/leui/widget/LeBubbleTextView;
.super Lcom/letv/leui/widget/LeBubbleView;
.source "LeBubbleTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private tvContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBubbleView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeBubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeBubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getContentTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleTextView;->tvContent:Landroid/widget/TextView;

    return-object v0
.end method

.method protected initChildView(FIIFLjava/lang/String;)V
    .locals 4
    .param p1, "radius"    # F
    .param p2, "backgroundColor"    # I
    .param p3, "textColor"    # I
    .param p4, "textSize"    # F
    .param p5, "content"    # Ljava/lang/String;

    .prologue
    invoke-super/range {p0 .. p5}, Lcom/letv/leui/widget/LeBubbleView;->initChildView(FIIFLjava/lang/String;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/letv/leui/widget/LeBubbleTextView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/letv/leui/widget/LeBubbleTextView;->tvContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeBubbleTextView;->tvContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeBubbleTextView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeBubbleTextView;->tvContent:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeBubbleTextView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeBubbleTextView;->dip2px(F)I

    move-result v1

    .local v1, "px22":I
    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeBubbleTextView;->dip2px(F)I

    move-result v0

    .local v0, "px16":I
    iget-object v2, p0, Lcom/letv/leui/widget/LeBubbleTextView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeBubbleTextView;->conRl:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/letv/leui/widget/LeBubbleTextView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method
