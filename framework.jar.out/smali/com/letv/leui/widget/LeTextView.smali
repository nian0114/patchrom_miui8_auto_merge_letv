.class public Lcom/letv/leui/widget/LeTextView;
.super Landroid/widget/TextView;
.source "LeTextView.java"


# static fields
.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000


# instance fields
.field protected mTextBufferType:Landroid/widget/TextView$BufferType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lcom/letv/leui/widget/LeTextView;->mTextBufferType:Landroid/widget/TextView$BufferType;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/letv/leui/widget/LeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lcom/letv/leui/widget/LeTextView;->mTextBufferType:Landroid/widget/TextView$BufferType;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lcom/letv/leui/widget/LeTextView;->mTextBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lcom/letv/leui/widget/LeTextView;->mTextBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTextView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final addLinks(Landroid/text/Spannable;I)Z
    .locals 1
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "mask"    # I

    .prologue
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/letv/leui/util/LeLinkify;->addLinks(Landroid/text/Spannable;IZ)Z

    move-result v0

    return v0
.end method

.method public copyText()V
    .locals 1

    .prologue
    const v0, 0x1020021

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTextView;->onTextContextMenuItem(I)Z

    return-void
.end method

.method public destroySelectionMode()V
    .locals 0

    .prologue
    return-void
.end method

.method protected hideControllers()V
    .locals 0

    .prologue
    return-void
.end method

.method public isPointInView(FFF)Z
    .locals 1
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectAll()V
    .locals 1

    .prologue
    const v0, 0x102001f

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTextView;->onTextContextMenuItem(I)Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    if-ne p2, v0, :cond_0

    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .end local p2    # "type":Landroid/widget/TextView$BufferType;
    :cond_0
    iput-object p2, p0, Lcom/letv/leui/widget/LeTextView;->mTextBufferType:Landroid/widget/TextView$BufferType;

    iget-object v0, p0, Lcom/letv/leui/widget/LeTextView;->mTextBufferType:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
