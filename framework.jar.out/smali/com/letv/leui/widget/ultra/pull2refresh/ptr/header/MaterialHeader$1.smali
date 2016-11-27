.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;
.super Landroid/view/animation/Animation;
.source "MaterialHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    # setter for: Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mScale:F
    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->access$002(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;F)F

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

    # getter for: Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;
    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->access$100(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

    # getter for: Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mScale:F
    invoke-static {v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->access$000(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->invalidate()V

    return-void
.end method
