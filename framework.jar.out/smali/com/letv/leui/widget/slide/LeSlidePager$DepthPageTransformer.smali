.class public Lcom/letv/leui/widget/slide/LeSlidePager$DepthPageTransformer;
.super Ljava/lang/Object;
.source "LeSlidePager.java"

# interfaces
.implements Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/slide/LeSlidePager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DepthPageTransformer"
.end annotation


# static fields
.field private static final MIN_SCALE:F = 0.75f


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/slide/LeSlidePager;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/slide/LeSlidePager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$DepthPageTransformer;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .local v0, "pageWidth":I
    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void

    :cond_0
    cmpg-float v1, p2, v3

    if-gez v1, :cond_1

    neg-int v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_0

    :cond_1
    cmpl-float v1, p2, v3

    if-lez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$DepthPageTransformer;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    # getter for: Lcom/letv/leui/widget/slide/LeSlidePager;->mShadowsHeight:F
    invoke-static {v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->access$800(Lcom/letv/leui/widget/slide/LeSlidePager;)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_0
.end method
