.class public Lcom/letv/leui/preference/LeListPreference;
.super Landroid/preference/DialogPreference;
.source "LeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LeListPreference$DropdownPopup;,
        Lcom/letv/leui/preference/LeListPreference$SavedState;
    }
.end annotation


# static fields
.field public static final GRAVITY_END:I = 0x4

.field public static final GRAVITY_START:I = 0x3

.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final MODE_BOTTOM_SHEET:I = 0x2

.field public static final MODE_DAY:I = 0x8

.field public static final MODE_DIALOG:I = 0x0

.field public static final MODE_DROPDOWN:I = 0x1

.field public static final MODE_NIGHT:I = 0x7


# instance fields
.field private final DISMISS_FADE_OUT:I

.field private final SHOWING_FADE_IN:I

.field animateDrawable:Landroid/graphics/drawable/Drawable;

.field private arrow:Landroid/view/View;

.field private bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

.field private bottomSheetListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final delta:F

.field private divider:Landroid/graphics/drawable/Drawable;

.field handler:Landroid/os/Handler;

.field isAnimate:Z

.field private isInitValue:Z

.field private lastClickTime:J

.field private lePopGravity:I

.field private final listDrawable:I

.field private listTitleColorNormal:I

.field private listTitleColorSelected:I

.field private listViewSelector:I

.field private listViewSpaceHeight:I

.field private mAnchorView:Landroid/view/View;

.field private mBottomSheetBtnText:Ljava/lang/String;

.field private mBottomSheetCheckIsOn:Z

.field private mBottomSheetTitleText:Ljava/lang/String;

.field mBtnListener:Landroid/view/View$OnClickListener;

.field private mClickedDialogEntryIndex:I

.field private mCurrentOrientation:I

.field private mDropDownWidth:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mMaxDropDownHeight:I

.field private mMessages:[Ljava/lang/CharSequence;

.field private mMode:I

.field private mPopup:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

.field private mPreferenceView:Landroid/view/View;

.field private mShowMode:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mUnableItemIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z

.field private messageView:Landroid/view/View;

.field private orgAlpha:F

.field orgDrawable:Landroid/graphics/drawable/Drawable;

.field private overlayTextSize:F

.field private popBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/preference/LeListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x11600c8

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/preference/LeListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v5, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->listViewSelector:I

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->listViewSpaceHeight:I

    iput-boolean v8, p0, Lcom/letv/leui/preference/LeListPreference;->isInitValue:Z

    const v5, 0x1080553

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->listDrawable:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetCheckIsOn:Z

    const/16 v5, 0x8

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->mShowMode:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->mTempRect:Landroid/graphics/Rect;

    iput v9, p0, Lcom/letv/leui/preference/LeListPreference;->mDropDownWidth:I

    iput v9, p0, Lcom/letv/leui/preference/LeListPreference;->mMaxDropDownHeight:I

    iput v10, p0, Lcom/letv/leui/preference/LeListPreference;->mMode:I

    iput v11, p0, Lcom/letv/leui/preference/LeListPreference;->lePopGravity:I

    iput v8, p0, Lcom/letv/leui/preference/LeListPreference;->listTitleColorNormal:I

    iput v8, p0, Lcom/letv/leui/preference/LeListPreference;->listTitleColorSelected:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->overlayTextSize:F

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/letv/leui/preference/LeListPreference;->lastClickTime:J

    new-instance v5, Lcom/letv/leui/preference/LeListPreference$2;

    invoke-direct {v5, p0}, Lcom/letv/leui/preference/LeListPreference$2;-><init>(Lcom/letv/leui/preference/LeListPreference;)V

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->mBtnListener:Landroid/view/View$OnClickListener;

    new-instance v5, Lcom/letv/leui/preference/LeListPreference$3;

    invoke-direct {v5, p0}, Lcom/letv/leui/preference/LeListPreference$3;-><init>(Lcom/letv/leui/preference/LeListPreference;)V

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheetListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-boolean v8, p0, Lcom/letv/leui/preference/LeListPreference;->isAnimate:Z

    const/16 v5, 0x65

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->SHOWING_FADE_IN:I

    const/16 v5, 0x66

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->DISMISS_FADE_OUT:I

    const v5, 0x3d4ccccd    # 0.05f

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->delta:F

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->orgAlpha:F

    new-instance v5, Lcom/letv/leui/preference/LeListPreference$7;

    invoke-direct {v5, p0}, Lcom/letv/leui/preference/LeListPreference$7;-><init>(Lcom/letv/leui/preference/LeListPreference;)V

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->handler:Landroid/os/Handler;

    sget-object v5, Lcom/android/internal/R$styleable;->LeListPreference:[I

    invoke-virtual {p1, p2, v5, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->mMode:I

    goto :goto_1

    :pswitch_4
    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->lePopGravity:I

    goto :goto_1

    :pswitch_5
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->mDropDownWidth:I

    goto :goto_1

    :pswitch_6
    iget v5, p0, Lcom/letv/leui/preference/LeListPreference;->mMaxDropDownHeight:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->mMaxDropDownHeight:I

    goto :goto_1

    :pswitch_7
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->listViewSelector:I

    goto :goto_1

    :pswitch_8
    iget v5, p0, Lcom/letv/leui/preference/LeListPreference;->listViewSpaceHeight:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->listViewSpaceHeight:I

    goto :goto_1

    :pswitch_9
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->divider:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->divider:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .local v4, "popBackgroundColor":I
    if-eqz v4, :cond_0

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->divider:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .end local v4    # "popBackgroundColor":I
    :pswitch_a
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->popBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->popBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .local v3, "popBackgrounColor":I
    if-eqz v3, :cond_0

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->popBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .end local v3    # "popBackgrounColor":I
    :pswitch_b
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->listTitleColorNormal:I

    goto :goto_1

    :pswitch_c
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/preference/LeListPreference;->listTitleColorSelected:I

    goto :goto_1

    .end local v1    # "attr":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetBtnText:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/letv/leui/preference/LeListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/letv/leui/preference/LeListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/letv/leui/preference/LeListPreference;)Lcom/letv/leui/widget/LeBottomSheet;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/letv/leui/preference/LeListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->listTitleColorSelected:I

    return v0
.end method

.method static synthetic access$1100(Lcom/letv/leui/preference/LeListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->listTitleColorNormal:I

    return v0
.end method

.method static synthetic access$1200(Lcom/letv/leui/preference/LeListPreference;)Lcom/letv/leui/preference/LeListPreference$DropdownPopup;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPopup:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/letv/leui/preference/LeListPreference;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->orgAlpha:F

    return v0
.end method

.method static synthetic access$1400(Lcom/letv/leui/preference/LeListPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/letv/leui/preference/LeListPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->notifyChanged()V

    return-void
.end method

.method static synthetic access$1700(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->arrow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/letv/leui/preference/LeListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->lePopGravity:I

    return v0
.end method

.method static synthetic access$200(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/letv/leui/preference/LeListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->mDropDownWidth:I

    return v0
.end method

.method static synthetic access$2200(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->popBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/letv/leui/preference/LeListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$2400(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/letv/leui/preference/LeListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mMessages:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/letv/leui/preference/LeListPreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$800(Lcom/letv/leui/preference/LeListPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/letv/leui/preference/LeListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->listViewSelector:I

    return v0
.end method

.method private getSheetData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .local v1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "text"

    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-object v2
.end method

.method private getSheetKeySet()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private onDismissAnimate(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 1
    .param p1, "taget"    # Landroid/view/View;
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v0, Lcom/letv/leui/preference/LeListPreference$6;

    invoke-direct {v0, p0}, Lcom/letv/leui/preference/LeListPreference$6;-><init>(Lcom/letv/leui/preference/LeListPreference;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private showBottomSheet()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetTitleText:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    iget v1, p0, Lcom/letv/leui/preference/LeListPreference;->mShowMode:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->setShowMode(I)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getSheetData()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getSheetKeySet()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheetListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v6, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetTitleText:Ljava/lang/String;

    iget-object v7, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetBtnText:Ljava/lang/String;

    iget-object v9, p0, Lcom/letv/leui/preference/LeListPreference;->mBtnListener:Landroid/view/View$OnClickListener;

    move v8, v5

    invoke-virtual/range {v0 .. v9}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZLjava/lang/CharSequence;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mUnableItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->setUnableItemIndex(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    iget v1, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckPos(I)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    iget-boolean v1, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetCheckIsOn:Z

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckIsOn(Z)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->appear()V

    return-void
.end method

.method private showDropdownPopup()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/letv/leui/preference/LeListPreference;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v2, 0x101005d

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .local v6, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4, v3}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;-><init>(Lcom/letv/leui/preference/LeListPreference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPopup:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPopup:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    iget-object v8, p0, Lcom/letv/leui/preference/LeListPreference;->mPopup:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    new-instance v0, Lcom/letv/leui/preference/LeListPreference$4;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10900e6

    const v4, 0x1020016

    iget-object v5, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/preference/LeListPreference$4;-><init>(Lcom/letv/leui/preference/LeListPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPopup:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->show()V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->handler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .local v7, "msg":Landroid/os/Message;
    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->orgAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public changeWindowAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "i":I
    :goto_1
    return v0

    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public getMessages()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mMessages:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hide(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowToken"    # Landroid/os/IBinder;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeListPreference;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public hideKeyBoard()V
    .locals 2

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/preference/LeListPreference;->hide(Landroid/content/Context;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreference;->isInitValue:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    :cond_0
    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->setValueIndex(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/letv/leui/preference/LeListPreference;->lastClickTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreference;->isInitValue:Z

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mMessages:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mMessages:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onClick()V
    .locals 4

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/letv/leui/preference/LeListPreference;->lastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/leui/preference/LeListPreference;->lastClickTime:J

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->hideKeyBoard()V

    iget v0, p0, Lcom/letv/leui/preference/LeListPreference;->mMode:I

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iget v1, p0, Lcom/letv/leui/preference/LeListPreference;->mMode:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->showBottomSheet()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->showDropdownPopup()V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    const v1, 0x102048a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->arrow:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->arrow:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->arrow:Landroid/view/View;

    :goto_0
    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mAnchorView:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    new-instance v1, Lcom/letv/leui/preference/LeListPreference$5;

    invoke-direct {v1, p0}, Lcom/letv/leui/preference/LeListPreference$5;-><init>(Lcom/letv/leui/preference/LeListPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mPreferenceView:Landroid/view/View;

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->setValue(Ljava/lang/String;)V

    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/letv/leui/preference/LeListPreference$1;

    invoke-direct {v2, p0}, Lcom/letv/leui/preference/LeListPreference$1;-><init>(Lcom/letv/leui/preference/LeListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/letv/leui/preference/LeListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/letv/leui/preference/LeListPreference$SavedState;

    .local v0, "myState":Lcom/letv/leui/preference/LeListPreference$SavedState;
    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, v0, Lcom/letv/leui/preference/LeListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/letv/leui/preference/LeListPreference;->setValue(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/letv/leui/preference/LeListPreference$SavedState;->isBottomSheetShowing:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->showBottomSheet()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->isPersistent()Z

    move-result v2

    if-nez v2, :cond_0

    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/letv/leui/preference/LeListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/letv/leui/preference/LeListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v0, "myState":Lcom/letv/leui/preference/LeListPreference$SavedState;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/letv/leui/preference/LeListPreference$SavedState;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v0, Lcom/letv/leui/preference/LeListPreference$SavedState;->isBottomSheetShowing:Z

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/letv/leui/preference/LeListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreference;->isInitValue:Z

    return-void

    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setBottomSheetBtnText(Ljava/lang/String;)V
    .locals 1
    .param p1, "btnText"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetBtnText:Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->getBtn_cancel()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setBottomSheetItemCheckIsOn(Z)V
    .locals 1
    .param p1, "checkIsOn"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetCheckIsOn:Z

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckIsOn(Z)V

    :cond_0
    return-void
.end method

.method public setBottomSheetItemChecked(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckPos(I)V

    :cond_0
    return-void
.end method

.method public setBottomSheetShowMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeListPreference;->mShowMode:I

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setShowMode(I)V

    :cond_0
    return-void
.end method

.method public setBottomSheetTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference;->mBottomSheetTitleText:Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeListPreference;->mDropDownWidth:I

    return-void
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setItemColor(I)V
    .locals 1
    .param p1, "Color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setCheckBoxItemColor(I)V

    :cond_0
    return-void
.end method

.method public setMaxDropDownHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeListPreference;->mMaxDropDownHeight:I

    return-void
.end method

.method public setMessages(I)V
    .locals 1
    .param p1, "messagesResId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->setMessages([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessages([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "messages"    # [Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference;->mMessages:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeListPreference;->mMode:I

    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public setUnableItemIndex(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "unableItemIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference;->mUnableItemIndex:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->bottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeBottomSheet;->setUnableItemIndex(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/letv/leui/preference/LeListPreference;->mValueSet:Z

    if-nez v2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/letv/leui/preference/LeListPreference;->mValueSet:Z

    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeListPreference;->persistString(Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    iget v1, p0, Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I

    invoke-virtual {p0, v1}, Lcom/letv/leui/preference/LeListPreference;->setBottomSheetItemChecked(I)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference;->notifyChanged()V

    :cond_1
    return-void

    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValueIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
