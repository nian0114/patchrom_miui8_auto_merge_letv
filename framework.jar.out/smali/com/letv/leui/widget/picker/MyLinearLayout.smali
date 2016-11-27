.class public Lcom/letv/leui/widget/picker/MyLinearLayout;
.super Landroid/widget/LinearLayout;
.source "MyLinearLayout.java"


# instance fields
.field private alpha:F

.field private imageMatrix:Landroid/graphics/Matrix;

.field private mCamera:Landroid/graphics/Camera;

.field private whellView:Lcom/letv/leui/widget/picker/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setStaticTransformationsEnabled(Z)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/MyLinearLayout;->mCamera:Landroid/graphics/Camera;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 48
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getVisibleItems()I

    move-result v39

    .local v39, "visibleItem":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getViewAdapter()Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v24

    .local v24, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v13

    .local v13, "childHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getTextSize()I

    move-result v32

    .local v32, "textSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getItemTextSize()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v34, v0

    .local v34, "textSize_ItemColor":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getLabelTextSize()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v33, v0

    .local v33, "textSize_CenterColor":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildCount()I

    move-result v15

    .local v15, "cnt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v37

    .local v37, "uScrollingOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getScrollingOffset()I

    move-result v30

    .local v30, "scrollingOffset":I
    if-nez v30, :cond_0

    if-eqz v37, :cond_0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/letv/leui/widget/picker/WheelView;->setUOffset(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getIsVertical()Z

    move-result v41

    if-eqz v41, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v41

    div-int/lit8 v27, v41, 0x2

    .local v27, "pCY":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    if-ge v0, v15, :cond_22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    .local v38, "v":Landroid/view/View;
    move-object/from16 v0, v38

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    const/4 v9, 0x0

    .local v9, "cCY":I
    const/4 v10, 0x0

    .local v10, "cCY_new":I
    const/16 v19, 0x0

    .local v19, "diffPos":I
    const/16 v18, 0x0

    .local v18, "currentItem":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v18

    move/from16 v0, v24

    move/from16 v1, v39

    if-ge v0, v1, :cond_7

    div-int/lit8 v41, v39, 0x2

    move/from16 v0, v18

    move/from16 v1, v41

    if-ge v0, v1, :cond_5

    div-int/lit8 v41, v39, 0x2

    sub-int v41, v41, v18

    mul-int v19, v41, v13

    :goto_1
    if-lez v37, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    add-int v41, v41, v42

    add-int v41, v41, v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v42

    sub-int v10, v41, v42

    add-int v9, v10, v19

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->clear()V

    const/16 v41, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    sub-int v41, v9, v27

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    const/high16 v42, 0x40a00000    # 5.0f

    const/high16 v43, 0x40800000    # 4.0f

    sub-int v44, v9, v27

    invoke-static/range {v44 .. v44}, Ljava/lang/Math;->abs(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v43, v43, v44

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v44, v0

    div-float v43, v43, v44

    add-float v42, v42, v43

    mul-float v41, v41, v42

    int-to-float v0, v13

    move/from16 v42, v0

    mul-float v41, v41, v42

    const v42, 0x3e4ccccd    # 0.2f

    mul-float v4, v41, v42

    .local v4, "Y":F
    int-to-float v0, v13

    move/from16 v41, v0

    const/high16 v42, 0x40000000    # 2.0f

    div-float v21, v41, v42

    .local v21, "half":F
    sub-int v41, v9, v27

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    mul-float v41, v41, v4

    move/from16 v0, v41

    float-to-int v5, v0

    .local v5, "base_Y":I
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    sub-int v41, v9, v27

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v44, v0

    div-float v41, v41, v44

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v44, v0

    const-wide v46, 0x3fd3333333333333L    # 0.3

    mul-double v44, v44, v46

    sub-double v42, v42, v44

    move-wide/from16 v0, v42

    double-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/picker/MyLinearLayout;->imageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Camera;->save()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->imageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->imageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v41, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v42

    move/from16 v0, v42

    neg-int v0, v0

    move/from16 v42, v0

    div-int/lit8 v42, v42, 0x2

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v43

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v43, v0

    div-int/lit8 v43, v43, 0x2

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    invoke-virtual/range {v41 .. v43}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->imageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v41, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v42

    div-int/lit8 v42, v42, 0x2

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v43

    div-int/lit8 v43, v43, 0x2

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    invoke-virtual/range {v41 .. v43}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Camera;->restore()V

    const v41, 0x10200b4

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .local v36, "tv":Landroid/widget/TextView;
    const/high16 v41, 0x3f800000    # 1.0f

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    move/from16 v41, v0

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v41

    div-int/lit8 v31, v41, 0xa

    .local v31, "space":I
    div-int/lit8 v41, v39, 0x2

    add-int/lit8 v41, v41, -0x1

    div-int/lit8 v42, v39, 0x2

    add-int v41, v41, v42

    mul-int v41, v41, v13

    div-int/lit8 v35, v41, 0x2

    .local v35, "topCenter":I
    mul-int v41, v13, v39

    div-int/lit8 v11, v41, 0x2

    .local v11, "center":I
    div-int/lit8 v41, v39, 0x2

    add-int/lit8 v41, v41, 0x1

    div-int/lit8 v42, v39, 0x2

    add-int v41, v41, v42

    add-int/lit8 v41, v41, 0x2

    mul-int v41, v41, v13

    div-int/lit8 v6, v41, 0x2

    .local v6, "bottomCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getCenterTextColot()I

    move-result v12

    .local v12, "centerColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getNormalTextColor()I

    move-result v23

    .local v23, "itemColor":I
    const/16 v16, 0x0

    .local v16, "color":I
    new-instance v17, Landroid/animation/ArgbEvaluator;

    invoke-direct/range {v17 .. v17}, Landroid/animation/ArgbEvaluator;-><init>()V

    .local v17, "colorEvaluator":Landroid/animation/ArgbEvaluator;
    const/16 v20, 0x0

    .local v20, "fraction":F
    invoke-virtual/range {v36 .. v36}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    if-ltz v9, :cond_1

    add-int v41, v35, v31

    move/from16 v0, v41

    if-le v9, v0, :cond_2

    :cond_1
    sub-int v41, v6, v31

    move/from16 v0, v41

    if-lt v9, v0, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v41

    mul-int v41, v41, v39

    move/from16 v0, v41

    if-gt v9, v0, :cond_b

    :cond_2
    move/from16 v16, v23

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_3
    :goto_3
    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .end local v4    # "Y":F
    .end local v5    # "base_Y":I
    .end local v6    # "bottomCenter":I
    .end local v9    # "cCY":I
    .end local v10    # "cCY_new":I
    .end local v11    # "center":I
    .end local v12    # "centerColor":I
    .end local v16    # "color":I
    .end local v17    # "colorEvaluator":Landroid/animation/ArgbEvaluator;
    .end local v18    # "currentItem":I
    .end local v19    # "diffPos":I
    .end local v20    # "fraction":F
    .end local v21    # "half":F
    .end local v23    # "itemColor":I
    .end local v31    # "space":I
    .end local v35    # "topCenter":I
    .end local v36    # "tv":Landroid/widget/TextView;
    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .restart local v9    # "cCY":I
    .restart local v10    # "cCY_new":I
    .restart local v18    # "currentItem":I
    .restart local v19    # "diffPos":I
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    add-int v41, v41, v42

    add-int v10, v41, v37

    add-int v9, v10, v19

    goto/16 :goto_2

    :cond_7
    div-int/lit8 v41, v39, 0x2

    move/from16 v0, v18

    move/from16 v1, v41

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->isCyclic()Z

    move-result v41

    if-nez v41, :cond_9

    div-int/lit8 v41, v39, 0x2

    sub-int v41, v41, v18

    mul-int v19, v41, v13

    if-lez v37, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    add-int v41, v41, v42

    add-int v41, v41, v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v42

    sub-int v10, v41, v42

    add-int v9, v10, v19

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    add-int v41, v41, v42

    add-int v10, v41, v37

    add-int v9, v10, v19

    goto/16 :goto_2

    :cond_9
    if-lez v37, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    add-int v41, v41, v42

    add-int v41, v41, v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v42

    sub-int v9, v41, v42

    goto/16 :goto_2

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v42

    add-int v41, v41, v42

    add-int v9, v41, v37

    goto/16 :goto_2

    .restart local v4    # "Y":F
    .restart local v5    # "base_Y":I
    .restart local v6    # "bottomCenter":I
    .restart local v11    # "center":I
    .restart local v12    # "centerColor":I
    .restart local v16    # "color":I
    .restart local v17    # "colorEvaluator":Landroid/animation/ArgbEvaluator;
    .restart local v20    # "fraction":F
    .restart local v21    # "half":F
    .restart local v23    # "itemColor":I
    .restart local v31    # "space":I
    .restart local v35    # "topCenter":I
    .restart local v36    # "tv":Landroid/widget/TextView;
    :cond_b
    sub-int v41, v11, v31

    move/from16 v0, v41

    if-lt v9, v0, :cond_c

    add-int v41, v11, v31

    move/from16 v0, v41

    if-gt v9, v0, :cond_c

    move/from16 v16, v12

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_3

    :cond_c
    add-int v41, v11, v31

    move/from16 v0, v41

    if-le v9, v0, :cond_f

    sub-int v41, v6, v31

    move/from16 v0, v41

    if-ge v9, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-lez v41, :cond_d

    sub-int v41, v9, v11

    sub-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v6, v11

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v20, v41, v42

    sub-float v41, v33, v34

    mul-float v41, v41, v20

    sub-float v41, v33, v41

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sub-int v41, v9, v11

    sub-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v6, v11

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v17

    move/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-gez v41, :cond_e

    sub-int v41, v9, v6

    add-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v6, v11

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v20, v41, v42

    sub-float v41, v33, v34

    mul-float v41, v41, v20

    add-float v41, v41, v34

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sub-int v41, v9, v6

    add-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v6, v11

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v17

    move/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-nez v41, :cond_3

    move/from16 v16, v23

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_3

    :cond_f
    add-int v41, v35, v31

    move/from16 v0, v41

    if-le v9, v0, :cond_3

    sub-int v41, v11, v31

    move/from16 v0, v41

    if-ge v9, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-lez v41, :cond_10

    sub-int v41, v9, v35

    sub-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v11, v35

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v20, v41, v42

    sub-float v41, v33, v34

    mul-float v41, v41, v20

    add-float v41, v41, v34

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sub-int v41, v9, v35

    sub-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v11, v35

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v17

    move/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-gez v41, :cond_11

    sub-int v41, v9, v11

    add-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v11, v35

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v20, v41, v42

    sub-float v41, v33, v34

    mul-float v41, v41, v20

    sub-float v41, v33, v41

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sub-int v41, v9, v11

    add-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v11, v35

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v17

    move/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-nez v41, :cond_3

    move/from16 v16, v23

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_3

    .end local v4    # "Y":F
    .end local v5    # "base_Y":I
    .end local v6    # "bottomCenter":I
    .end local v9    # "cCY":I
    .end local v10    # "cCY_new":I
    .end local v11    # "center":I
    .end local v12    # "centerColor":I
    .end local v16    # "color":I
    .end local v17    # "colorEvaluator":Landroid/animation/ArgbEvaluator;
    .end local v18    # "currentItem":I
    .end local v19    # "diffPos":I
    .end local v20    # "fraction":F
    .end local v21    # "half":F
    .end local v22    # "i":I
    .end local v23    # "itemColor":I
    .end local v27    # "pCY":I
    .end local v31    # "space":I
    .end local v35    # "topCenter":I
    .end local v36    # "tv":Landroid/widget/TextView;
    .end local v38    # "v":Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v14

    .local v14, "childWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v40

    .local v40, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v41

    div-int/lit8 v26, v41, 0x2

    .local v26, "pCX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v41

    mul-int v42, v14, v39

    sub-int v41, v41, v42

    div-int/lit8 v28, v41, 0x2

    .local v28, "padding":I
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_4
    move/from16 v0, v22

    if-ge v0, v15, :cond_22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    .restart local v38    # "v":Landroid/view/View;
    move-object/from16 v0, v38

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_16

    const/4 v7, 0x0

    .local v7, "cCX":I
    const/4 v8, 0x0

    .local v8, "cCX_new":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v18

    .restart local v18    # "currentItem":I
    move/from16 v0, v24

    move/from16 v1, v39

    if-ge v0, v1, :cond_17

    sub-int v41, v18, v22

    mul-int v41, v41, v14

    add-int v41, v41, v26

    add-int v7, v41, v28

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->clear()V

    const/16 v41, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    sub-int v41, v7, v26

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    const/high16 v42, 0x40a00000    # 5.0f

    const/high16 v43, 0x40800000    # 4.0f

    sub-int v44, v7, v26

    invoke-static/range {v44 .. v44}, Ljava/lang/Math;->abs(I)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v43, v43, v44

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v44, v0

    div-float v43, v43, v44

    add-float v42, v42, v43

    mul-float v41, v41, v42

    int-to-float v0, v14

    move/from16 v42, v0

    mul-float v41, v41, v42

    const v42, 0x3e4ccccd    # 0.2f

    mul-float v4, v41, v42

    .restart local v4    # "Y":F
    sub-int v41, v7, v26

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    mul-float v41, v41, v4

    move/from16 v0, v41

    float-to-int v5, v0

    .restart local v5    # "base_Y":I
    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    sub-int v41, v7, v26

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v44, v0

    div-float v41, v41, v44

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v44, v0

    const-wide v46, 0x3fc999999999999aL    # 0.2

    mul-double v44, v44, v46

    sub-double v42, v42, v44

    move-wide/from16 v0, v42

    double-to-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/picker/MyLinearLayout;->imageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Camera;->save()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->imageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->imageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v41, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v42

    move/from16 v0, v42

    neg-int v0, v0

    move/from16 v42, v0

    div-int/lit8 v42, v42, 0x2

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v43

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v43, v0

    div-int/lit8 v43, v43, 0x2

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    invoke-virtual/range {v41 .. v43}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->imageMatrix:Landroid/graphics/Matrix;

    move-object/from16 v41, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v42

    div-int/lit8 v42, v42, 0x2

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v43

    div-int/lit8 v43, v43, 0x2

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    invoke-virtual/range {v41 .. v43}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Camera;->restore()V

    const v41, 0x10200b4

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .restart local v36    # "tv":Landroid/widget/TextView;
    const/high16 v41, 0x3f800000    # 1.0f

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->alpha:F

    move/from16 v41, v0

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v41

    div-int/lit8 v31, v41, 0xa

    .restart local v31    # "space":I
    div-int/lit8 v41, v39, 0x2

    add-int/lit8 v41, v41, -0x1

    div-int/lit8 v42, v39, 0x2

    add-int v41, v41, v42

    mul-int v41, v41, v14

    div-int/lit8 v25, v41, 0x2

    .local v25, "leftCenter":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v41

    mul-int v41, v41, v39

    div-int/lit8 v11, v41, 0x2

    .restart local v11    # "center":I
    div-int/lit8 v41, v39, 0x2

    add-int/lit8 v41, v41, 0x1

    div-int/lit8 v42, v39, 0x2

    add-int v41, v41, v42

    add-int/lit8 v41, v41, 0x2

    mul-int v41, v41, v14

    div-int/lit8 v29, v41, 0x2

    .local v29, "rightCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getCenterTextColot()I

    move-result v12

    .restart local v12    # "centerColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getNormalTextColor()I

    move-result v23

    .restart local v23    # "itemColor":I
    const/16 v16, 0x0

    .restart local v16    # "color":I
    const/16 v20, 0x0

    .restart local v20    # "fraction":F
    invoke-virtual/range {v36 .. v36}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    new-instance v17, Landroid/animation/ArgbEvaluator;

    invoke-direct/range {v17 .. v17}, Landroid/animation/ArgbEvaluator;-><init>()V

    .restart local v17    # "colorEvaluator":Landroid/animation/ArgbEvaluator;
    if-ltz v7, :cond_13

    add-int v41, v25, v31

    move/from16 v0, v41

    if-le v7, v0, :cond_14

    :cond_13
    sub-int v41, v29, v31

    move/from16 v0, v41

    if-lt v7, v0, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v41

    mul-int v41, v41, v39

    move/from16 v0, v41

    if-gt v7, v0, :cond_1b

    :cond_14
    move/from16 v16, v23

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_15
    :goto_6
    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .end local v4    # "Y":F
    .end local v5    # "base_Y":I
    .end local v7    # "cCX":I
    .end local v8    # "cCX_new":I
    .end local v11    # "center":I
    .end local v12    # "centerColor":I
    .end local v16    # "color":I
    .end local v17    # "colorEvaluator":Landroid/animation/ArgbEvaluator;
    .end local v18    # "currentItem":I
    .end local v20    # "fraction":F
    .end local v23    # "itemColor":I
    .end local v25    # "leftCenter":I
    .end local v29    # "rightCenter":I
    .end local v31    # "space":I
    .end local v36    # "tv":Landroid/widget/TextView;
    :cond_16
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .restart local v7    # "cCX":I
    .restart local v8    # "cCX_new":I
    .restart local v18    # "currentItem":I
    :cond_17
    div-int/lit8 v41, v39, 0x2

    move/from16 v0, v18

    move/from16 v1, v41

    if-ge v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->isCyclic()Z

    move-result v41

    if-nez v41, :cond_19

    div-int/lit8 v41, v39, 0x2

    sub-int v41, v41, v18

    mul-int v19, v41, v14

    .restart local v19    # "diffPos":I
    if-lez v37, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v42

    add-int v41, v41, v42

    add-int v41, v41, v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v42

    sub-int v8, v41, v42

    add-int v41, v8, v19

    add-int v7, v41, v28

    goto/16 :goto_5

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v42

    add-int v41, v41, v42

    add-int v8, v41, v37

    add-int v41, v8, v19

    add-int v7, v41, v28

    goto/16 :goto_5

    .end local v19    # "diffPos":I
    :cond_19
    if-lez v37, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v42

    add-int v41, v41, v42

    add-int v41, v41, v37

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v42

    sub-int v41, v41, v42

    add-int v7, v41, v28

    goto/16 :goto_5

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v41

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v42

    sub-int v41, v41, v42

    shr-int/lit8 v41, v41, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v42

    add-int v41, v41, v42

    add-int v41, v41, v37

    add-int v7, v41, v28

    goto/16 :goto_5

    .restart local v4    # "Y":F
    .restart local v5    # "base_Y":I
    .restart local v11    # "center":I
    .restart local v12    # "centerColor":I
    .restart local v16    # "color":I
    .restart local v17    # "colorEvaluator":Landroid/animation/ArgbEvaluator;
    .restart local v20    # "fraction":F
    .restart local v23    # "itemColor":I
    .restart local v25    # "leftCenter":I
    .restart local v29    # "rightCenter":I
    .restart local v31    # "space":I
    .restart local v36    # "tv":Landroid/widget/TextView;
    :cond_1b
    sub-int v41, v11, v31

    move/from16 v0, v41

    if-lt v7, v0, :cond_1c

    add-int v41, v11, v31

    move/from16 v0, v41

    if-gt v7, v0, :cond_1c

    move/from16 v16, v12

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_6

    :cond_1c
    add-int v41, v11, v31

    move/from16 v0, v41

    if-le v7, v0, :cond_1f

    sub-int v41, v29, v31

    move/from16 v0, v41

    if-ge v7, v0, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-lez v41, :cond_1d

    sub-int v41, v7, v11

    sub-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v29, v11

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v20, v41, v42

    sub-float v41, v33, v34

    mul-float v41, v41, v20

    sub-float v41, v33, v41

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sub-int v41, v7, v11

    sub-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v29, v11

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v17

    move/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-gez v41, :cond_1e

    sub-int v41, v7, v29

    add-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v29, v11

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v20, v41, v42

    sub-float v41, v33, v34

    mul-float v41, v41, v20

    add-float v41, v41, v34

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sub-int v41, v7, v29

    add-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v29, v11

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v17

    move/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_6

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-nez v41, :cond_15

    move/from16 v16, v23

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_6

    :cond_1f
    add-int v41, v25, v31

    move/from16 v0, v41

    if-le v7, v0, :cond_15

    sub-int v41, v11, v31

    move/from16 v0, v41

    if-ge v7, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-lez v41, :cond_20

    sub-int v41, v7, v25

    sub-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v11, v25

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v20, v41, v42

    sub-float v41, v33, v34

    mul-float v41, v41, v20

    add-float v41, v41, v34

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sub-int v41, v7, v25

    sub-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v11, v25

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v17

    move/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_6

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-gez v41, :cond_21

    sub-int v41, v7, v11

    add-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v11, v25

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v20, v41, v42

    sub-float v41, v33, v34

    mul-float v41, v41, v20

    sub-float v41, v33, v41

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sub-int v41, v7, v11

    add-int v41, v41, v31

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-int v42, v11, v25

    mul-int/lit8 v43, v31, 0x2

    sub-int v42, v42, v43

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    div-float v41, v41, v42

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v17

    move/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_6

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/letv/leui/widget/picker/WheelView;->getUOffset()I

    move-result v41

    if-nez v41, :cond_15

    move/from16 v16, v23

    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_6

    .end local v4    # "Y":F
    .end local v5    # "base_Y":I
    .end local v7    # "cCX":I
    .end local v8    # "cCX_new":I
    .end local v11    # "center":I
    .end local v12    # "centerColor":I
    .end local v14    # "childWidth":I
    .end local v16    # "color":I
    .end local v17    # "colorEvaluator":Landroid/animation/ArgbEvaluator;
    .end local v18    # "currentItem":I
    .end local v20    # "fraction":F
    .end local v23    # "itemColor":I
    .end local v25    # "leftCenter":I
    .end local v26    # "pCX":I
    .end local v28    # "padding":I
    .end local v29    # "rightCenter":I
    .end local v31    # "space":I
    .end local v36    # "tv":Landroid/widget/TextView;
    .end local v38    # "v":Landroid/view/View;
    .end local v40    # "w":I
    :cond_22
    const/16 v41, 0x1

    return v41
.end method

.method public getWhellView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public setWhellView(Lcom/letv/leui/widget/picker/WheelView;)V
    .locals 0
    .param p1, "whellView"    # Lcom/letv/leui/widget/picker/WheelView;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/picker/MyLinearLayout;->whellView:Lcom/letv/leui/widget/picker/WheelView;

    return-void
.end method
