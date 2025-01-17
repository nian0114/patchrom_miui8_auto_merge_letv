.class public Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "LeFlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeFlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static NO_SPACING:I


# instance fields
.field private exceedMaxLineNum:Z

.field private horizontalSpacing:I

.field private newLine:Z

.field private verticalSpacing:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    sput v0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->NO_SPACING:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sget v0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->horizontalSpacing:I

    sget v0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->verticalSpacing:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->newLine:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->horizontalSpacing:I

    sget v0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->verticalSpacing:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->newLine:Z

    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->horizontalSpacing:I

    sget v0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->NO_SPACING:I

    iput v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->verticalSpacing:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->newLine:Z

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->newLine:Z

    return v0
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->verticalSpacing:I

    return v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->horizontalSpacing:I

    return v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->x:I

    return v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->y:I

    return v0
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    sget-object v1, Lcom/android/internal/R$styleable;->LeFlowLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    :try_start_0
    sget v2, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->NO_SPACING:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->horizontalSpacing:I

    const/4 v1, 0x2

    sget v2, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->NO_SPACING:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->verticalSpacing:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->newLine:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method public horizontalSpacingSpecified()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->horizontalSpacing:I

    sget v1, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->NO_SPACING:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExceedMaxLineNum()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->exceedMaxLineNum:Z

    return v0
.end method

.method public setExceedMaxLineNum(Z)V
    .locals 0
    .param p1, "exceed"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->exceedMaxLineNum:Z

    return-void
.end method

.method public setPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->x:I

    iput p2, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->y:I

    return-void
.end method

.method public verticalSpacingSpecified()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->verticalSpacing:I

    sget v1, Lcom/letv/leui/widget/LeFlowLayout$LayoutParams;->NO_SPACING:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
