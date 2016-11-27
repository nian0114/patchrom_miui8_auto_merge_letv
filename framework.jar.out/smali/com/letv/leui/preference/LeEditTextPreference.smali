.class public Lcom/letv/leui/preference/LeEditTextPreference;
.super Landroid/preference/Preference;
.source "LeEditTextPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LeEditTextPreference$SavedState;
    }
.end annotation


# static fields
.field private static clickedId:I

.field public static clickedKey:Ljava/lang/String;

.field private static curMaxId:I

.field private static softInputShow:Z


# instance fields
.field private _id:I

.field private colorStateList:Landroid/content/res/ColorStateList;

.field private curMills:J

.field private editCharSequence:Ljava/lang/CharSequence;

.field private editRedId:I

.field private filters:[Landroid/text/InputFilter;

.field private forceColor:I

.field private hint:Ljava/lang/CharSequence;

.field private innerWatcher:Landroid/text/TextWatcher;

.field private inputType:I

.field private isAttached:Z

.field protected mEditText:Landroid/widget/EditText;

.field private mExtraHeight:I

.field private mIsMeasureInputArea:Z

.field private mPreEditText:Landroid/widget/EditText;

.field private mTmpTransformRect:Landroid/graphics/RectF;

.field private onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private preMills:J

.field private showCursor:Ljava/lang/Runnable;

.field private stateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private textWatcher:Landroid/text/TextWatcher;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/letv/leui/preference/LeEditTextPreference;->clickedKey:Ljava/lang/String;

    sput-boolean v1, Lcom/letv/leui/preference/LeEditTextPreference;->softInputShow:Z

    const/4 v0, -0x1

    sput v0, Lcom/letv/leui/preference/LeEditTextPreference;->clickedId:I

    sput v1, Lcom/letv/leui/preference/LeEditTextPreference;->curMaxId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/preference/LeEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x11600c2

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/preference/LeEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v4, p0, Lcom/letv/leui/preference/LeEditTextPreference;->isAttached:Z

    iput-wide v6, p0, Lcom/letv/leui/preference/LeEditTextPreference;->preMills:J

    iput-wide v6, p0, Lcom/letv/leui/preference/LeEditTextPreference;->curMills:J

    iput v4, p0, Lcom/letv/leui/preference/LeEditTextPreference;->_id:I

    new-instance v3, Lcom/letv/leui/preference/LeEditTextPreference$1;

    invoke-direct {v3, p0}, Lcom/letv/leui/preference/LeEditTextPreference$1;-><init>(Lcom/letv/leui/preference/LeEditTextPreference;)V

    iput-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->innerWatcher:Landroid/text/TextWatcher;

    const/4 v3, -0x1

    iput v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->inputType:I

    new-instance v3, Lcom/letv/leui/preference/LeEditTextPreference$3;

    invoke-direct {v3, p0}, Lcom/letv/leui/preference/LeEditTextPreference$3;-><init>(Lcom/letv/leui/preference/LeEditTextPreference;)V

    iput-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->showCursor:Ljava/lang/Runnable;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mTmpTransformRect:Landroid/graphics/RectF;

    iput v4, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mExtraHeight:I

    sget v3, Lcom/letv/leui/preference/LeEditTextPreference;->curMaxId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/letv/leui/preference/LeEditTextPreference;->curMaxId:I

    iput v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->_id:I

    sget-object v3, Lcom/android/internal/R$styleable;->LeEditTextPreference:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .local v2, "typedArray":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .local v1, "indexAttr":I
    packed-switch v1, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->hint:Ljava/lang/CharSequence;

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->forceColor:I

    goto :goto_1

    .end local v1    # "indexAttr":I
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/letv/leui/preference/LeEditTextPreference;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeEditTextPreference;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->textWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$102(Lcom/letv/leui/preference/LeEditTextPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/preference/LeEditTextPreference;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$200(Lcom/letv/leui/preference/LeEditTextPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeEditTextPreference;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->shouldPersist()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/letv/leui/preference/LeEditTextPreference;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeEditTextPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeEditTextPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/letv/leui/preference/LeEditTextPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeEditTextPreference;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->isAttached:Z

    return v0
.end method

.method static synthetic access$402(Lcom/letv/leui/preference/LeEditTextPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/preference/LeEditTextPreference;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->isAttached:Z

    return p1
.end method

.method static synthetic access$500(Lcom/letv/leui/preference/LeEditTextPreference;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/preference/LeEditTextPreference;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/preference/LeEditTextPreference;->clearFocus(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/letv/leui/preference/LeEditTextPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeEditTextPreference;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mIsMeasureInputArea:Z

    return v0
.end method

.method static synthetic access$700(Lcom/letv/leui/preference/LeEditTextPreference;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/preference/LeEditTextPreference;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/preference/LeEditTextPreference;->ensureViewArea(Landroid/view/View;)V

    return-void
.end method

.method private clearFocus(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->clearFocus(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_1

    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_2
    return-void
.end method

.method private ensureViewArea(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    .local v1, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    .local v2, "scrollY":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    iget v5, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mExtraHeight:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v0, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v3}, Lcom/letv/leui/preference/LeEditTextPreference;->requestRectangle(Landroid/view/View;Landroid/graphics/Rect;Z)V

    goto :goto_0
.end method

.method public static getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getItemOnAttachStateChangeListener()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    .prologue
    new-instance v0, Lcom/letv/leui/preference/LeEditTextPreference$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/preference/LeEditTextPreference$2;-><init>(Lcom/letv/leui/preference/LeEditTextPreference;)V

    return-object v0
.end method

.method public static hide(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    invoke-static {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private requestRectangle(Landroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v4, p1

    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, "parent":Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/preference/LeEditTextPreference;->mTmpTransformRect:Landroid/graphics/RectF;

    if-nez v13, :cond_2

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/letv/leui/preference/LeEditTextPreference;->mTmpTransformRect:Landroid/graphics/RectF;

    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/letv/leui/preference/LeEditTextPreference;->mTmpTransformRect:Landroid/graphics/RectF;

    .local v8, "position":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    const/4 v11, 0x0

    .local v11, "scrolled":Z
    :goto_0
    if-eqz v6, :cond_0

    iget v13, v8, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    iget v14, v8, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    iget v15, v8, Landroid/graphics/RectF;->right:F

    float-to-int v15, v15

    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/Rect;->set(IIII)V

    instance-of v13, v6, Landroid/view/View;

    if-eqz v13, :cond_0

    move-object v7, v6

    check-cast v7, Landroid/view/View;

    .local v7, "parentView":Landroid/view/View;
    const/4 v13, -0x1

    invoke-virtual {v7, v13}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v13

    if-nez v13, :cond_3

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_3
    const/4 v3, 0x1

    .local v3, "canScroll":Z
    :goto_1
    if-eqz v3, :cond_4

    instance-of v13, v7, Landroid/widget/ScrollView;

    if-eqz v13, :cond_6

    move-object v13, v7

    check-cast v13, Landroid/widget/ScrollView;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v13, v4, v0, v1}, Landroid/widget/ScrollView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    move-object v4, v7

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_0

    .end local v3    # "canScroll":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .restart local v3    # "canScroll":Z
    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v5

    .local v5, "height":I
    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v12

    .local v12, "top":I
    add-int v2, v12, v5

    .local v2, "bottom":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    const/4 v10, 0x0

    .local v10, "scrollYDelta":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v2, :cond_9

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v12, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v5, :cond_8

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v12

    add-int/2addr v10, v13

    :cond_7
    :goto_3
    if-eqz v10, :cond_b

    const/4 v9, 0x1

    .local v9, "scroll":Z
    :goto_4
    if-eqz v9, :cond_4

    instance-of v13, v7, Landroid/widget/ListView;

    if-eqz v13, :cond_4

    move-object v13, v7

    check-cast v13, Landroid/widget/ListView;

    invoke-virtual {v13, v10}, Landroid/widget/ListView;->scrollListBy(I)V

    goto :goto_2

    .end local v9    # "scroll":Z
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v2

    add-int/2addr v10, v13

    goto :goto_3

    :cond_9
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v12, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v5, :cond_a

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v2, v13

    sub-int/2addr v10, v13

    goto :goto_3

    :cond_a
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v12, v13

    sub-int/2addr v10, v13

    goto :goto_3

    :cond_b
    const/4 v9, 0x0

    goto :goto_4
.end method

.method public static show(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    sput-boolean v1, Lcom/letv/leui/preference/LeEditTextPreference;->softInputShow:Z

    return-void
.end method


# virtual methods
.method public getEditCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getEditRedId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editRedId:I

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->textWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method public isMeasureInputArea()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mIsMeasureInputArea:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->inputType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->inputType:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    :cond_0
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->filters:[Landroid/text/InputFilter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->filters:[Landroid/text/InputFilter;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    iget v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editRedId:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editRedId:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    :cond_2
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->hint:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->hint:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_4
    const v2, 0x1020489

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "reflectTitle":Landroid/widget/TextView;
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const v2, 0x1020430

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v1, :cond_6

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mPreEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mPreEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mPreEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mPreEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->showCursor:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mPreEditText:Landroid/widget/EditText;

    sget v2, Lcom/letv/leui/preference/LeEditTextPreference;->clickedId:I

    iget v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->_id:I

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/letv/leui/preference/LeEditTextPreference;->show(Landroid/content/Context;Landroid/view/View;)V

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->showCursor:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    invoke-direct {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getItemOnAttachStateChangeListener()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-wide v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->curMills:J

    iput-wide v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->preMills:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->curMills:J

    .end local v0    # "reflectTitle":Landroid/widget/TextView;
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->show(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/preference/LeEditTextPreference;->clickedKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->_id:I

    sput v0, Lcom/letv/leui/preference/LeEditTextPreference;->clickedId:I

    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setClickable(Z)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->innerWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->colorStateList:Landroid/content/res/ColorStateList;

    :cond_0
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/letv/leui/preference/LeEditTextPreference;->softInputShow:Z

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_0
    return v1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->forceColor:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->titleView:Landroid/widget/TextView;

    iget v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->forceColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->_id:I

    sput v0, Lcom/letv/leui/preference/LeEditTextPreference;->clickedId:I

    iget-boolean v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mIsMeasureInputArea:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/letv/leui/preference/LeEditTextPreference;->ensureViewArea(Landroid/view/View;)V

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getEditCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeEditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->colorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->colorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/letv/leui/preference/LeEditTextPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/letv/leui/preference/LeEditTextPreference$SavedState;

    .local v0, "myState":Lcom/letv/leui/preference/LeEditTextPreference$SavedState;
    invoke-virtual {v0}, Lcom/letv/leui/preference/LeEditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, v0, Lcom/letv/leui/preference/LeEditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->setEditCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/letv/leui/preference/LeEditTextPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/letv/leui/preference/LeEditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v0, "myState":Lcom/letv/leui/preference/LeEditTextPreference$SavedState;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getEditCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :goto_1
    iput-object v2, v0, Lcom/letv/leui/preference/LeEditTextPreference$SavedState;->text:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getEditCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeEditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->stateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->stateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->stateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->stateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Landroid/view/View$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->hide(Landroid/content/Context;Landroid/os/IBinder;)V

    :cond_1
    return-void
.end method

.method public setEditCharSequence(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "editCharSequence"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editRedId:I

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->notifyChanged()V

    return-void
.end method

.method public setEditRedId(I)V
    .locals 1
    .param p1, "editRedId"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editRedId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->notifyChanged()V

    return-void
.end method

.method public setEditTextStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 0
    .param p1, "stateChangeListener"    # Landroid/view/View$OnAttachStateChangeListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->stateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public setExtraHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mExtraHeight:I

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 0
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->filters:[Landroid/text/InputFilter;

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->hint:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->notifyChanged()V

    return-void
.end method

.method public setInputType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->inputType:I

    return-void
.end method

.method public setMeasureInputArea(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mIsMeasureInputArea:Z

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "onFocusChangeListener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setTextWatcher(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->textWatcher:Landroid/text/TextWatcher;

    return-void
.end method
