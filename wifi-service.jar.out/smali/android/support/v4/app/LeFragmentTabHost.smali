.class public Landroid/support/v4/app/LeFragmentTabHost;
.super Landroid/widget/TabHost;
.source "LeFragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/LeFragmentTabHost$1;,
        Landroid/support/v4/app/LeFragmentTabHost$OnDoubleClickTabNotChangeListener;,
        Landroid/support/v4/app/LeFragmentTabHost$OnClickTabNotChangeListener;,
        Landroid/support/v4/app/LeFragmentTabHost$SavedState;,
        Landroid/support/v4/app/LeFragmentTabHost$DummyTabFactory;,
        Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    }
.end annotation


# static fields
.field private static final DOUBLE_CLICK_TIME_MS:I = 0x15e


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mHideFragment:Z

.field private mLastClickTime:J

.field private mLastTab:Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

.field private mOnClickTabNotChangeListener:Landroid/support/v4/app/LeFragmentTabHost$OnClickTabNotChangeListener;

.field private mOnDoubleClickTabNotChangeListener:Landroid/support/v4/app/LeFragmentTabHost$OnDoubleClickTabNotChangeListener;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/LeFragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mHideFragment:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastClickTime:J

    invoke-direct {p0, p1, v2}, Landroid/support/v4/app/LeFragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mHideFragment:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastClickTime:J

    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/LeFragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;
    .locals 6
    .param p1, "tabId"    # Ljava/lang/String;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    const/4 v1, 0x0

    .local v1, "newTab":Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    .local v2, "tab":Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->tag:Ljava/lang/String;
    invoke-static {v2}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$400(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "tab":Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    :cond_1
    if-nez v1, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No tab known for tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastTab:Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    if-eq v3, v1, :cond_6

    if-nez p2, :cond_3

    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    :cond_3
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastTab:Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastTab:Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mHideFragment:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastTab:Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_8

    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContext:Landroid/content/Context;

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$200(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$300(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    # setter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1, v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$102(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    iget v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContainerId:I

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->tag:Ljava/lang/String;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$400(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_5
    :goto_2
    iput-object v1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastTab:Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    :cond_6
    return-object p2

    :cond_7
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastTab:Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    :cond_8
    iget-boolean v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mHideFragment:Z

    if-nez v3, :cond_9

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_2

    :cond_9
    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_2
.end method

.method private ensureContent()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContainerId:I

    invoke-virtual {p0, v0}, Landroid/support/v4/app/LeFragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab content FrameLayout found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private ensureHierarchy(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x1020013

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-virtual {p0, v4}, Landroid/support/v4/app/LeFragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v1, "ll":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Landroid/support/v4/app/LeFragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TabWidget;

    invoke-direct {v2, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .local v2, "tw":Landroid/widget/TabWidget;
    invoke-virtual {v2, v4}, Landroid/widget/TabWidget;->setId(I)V

    invoke-virtual {v2, v6}, Landroid/widget/TabWidget;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .local v0, "fl":Landroid/widget/FrameLayout;
    const v3, 0x1020011

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    .end local v0    # "fl":Landroid/widget/FrameLayout;
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .restart local v0    # "fl":Landroid/widget/FrameLayout;
    iput-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContainerId:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0    # "fl":Landroid/widget/FrameLayout;
    .end local v1    # "ll":Landroid/widget/LinearLayout;
    .end local v2    # "tw":Landroid/widget/TabWidget;
    :cond_0
    return-void
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100f3

    aput v2, v1, v3

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContainerId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "tabSpec"    # Landroid/widget/TabHost$TabSpec;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Landroid/support/v4/app/LeFragmentTabHost$DummyTabFactory;

    iget-object v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/LeFragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    .local v2, "tag":Ljava/lang/String;
    new-instance v1, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    invoke-direct {v1, v2, p2, p3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .local v1, "info":Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    iget-boolean v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mAttached:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    # setter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1, v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$102(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-boolean v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mHideFragment:Z

    if-nez v3, :cond_1

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/LeFragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void

    .restart local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .local v0, "currentTab":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    .local v3, "tab":Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    iget-object v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->tag:Ljava/lang/String;
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$400(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    # setter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v3, v4}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$102(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_2

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_2

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$200(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$200(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    if-nez v1, :cond_1

    iget-object v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    :cond_1
    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v4, 0x0

    # setter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v3, v4}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$102(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    :cond_2
    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_3

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_3

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->tag:Ljava/lang/String;
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$400(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-object v3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastTab:Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    iget-object v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    :cond_5
    iget-boolean v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mHideFragment:Z

    if-nez v4, :cond_6

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    :cond_6
    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .end local v3    # "tab":Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    :cond_7
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mAttached:Z

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/LeFragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_8
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mAttached:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/LeFragmentTabHost$SavedState;

    .local v0, "ss":Landroid/support/v4/app/LeFragmentTabHost$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/app/LeFragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, v0, Landroid/support/v4/app/LeFragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/LeFragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/app/LeFragmentTabHost$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/app/LeFragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v0, "ss":Landroid/support/v4/app/LeFragmentTabHost$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/app/LeFragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    iget-boolean v1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mAttached:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v4/app/LeFragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v1, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public replaceTab(ILjava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "position"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    .local v1, "tab":Landroid/support/v4/app/LeFragmentTabHost$TabInfo;
    if-eqz v1, :cond_0

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$200(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p3, :cond_2

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$300(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_2
    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getCurrentTab()I

    move-result v2

    if-ne v2, p1, :cond_4

    iget-object v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    # setter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1, v2}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$102(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    iget v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContainerId:I

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$100(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    # getter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->tag:Ljava/lang/String;
    invoke-static {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$400(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_3
    # setter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v1, p2}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$202(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Ljava/lang/Class;)Ljava/lang/Class;

    # setter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v1, p3}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$302(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    .restart local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_4
    const/4 v2, 0x0

    # setter for: Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v1, v2}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->access$102(Landroid/support/v4/app/LeFragmentTabHost$TabInfo;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    goto :goto_1
.end method

.method public replaceTab(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/LeFragmentTabHost$TabInfo;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v4/app/LeFragmentTabHost;->replaceTab(ILjava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setCurrentTab(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    const-wide/16 v6, -0x1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getCurrentTab()I

    move-result v2

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnClickTabNotChangeListener:Landroid/support/v4/app/LeFragmentTabHost$OnClickTabNotChangeListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnClickTabNotChangeListener:Landroid/support/v4/app/LeFragmentTabHost$OnClickTabNotChangeListener;

    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/support/v4/app/LeFragmentTabHost$OnClickTabNotChangeListener;->onClickTabNotChanged(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "currentTimeMs":J
    iget-wide v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastClickTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    iget-wide v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x15e

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    iput-wide v6, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastClickTime:J

    iget-object v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnDoubleClickTabNotChangeListener:Landroid/support/v4/app/LeFragmentTabHost$OnDoubleClickTabNotChangeListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnDoubleClickTabNotChangeListener:Landroid/support/v4/app/LeFragmentTabHost$OnDoubleClickTabNotChangeListener;

    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/support/v4/app/LeFragmentTabHost$OnDoubleClickTabNotChangeListener;->onDoubleClickTabNotChanged(Ljava/lang/String;)V

    .end local v0    # "currentTimeMs":J
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .restart local v0    # "currentTimeMs":J
    :cond_4
    iput-wide v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastClickTime:J

    goto :goto_1

    :cond_5
    iput-wide v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastClickTime:J

    goto :goto_1

    .end local v0    # "currentTimeMs":J
    :cond_6
    iput-wide v6, p0, Landroid/support/v4/app/LeFragmentTabHost;->mLastClickTime:J

    goto :goto_1
.end method

.method public setFragmentHiddenEnabled(Z)V
    .locals 0
    .param p1, "hideFragment"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mHideFragment:Z

    return-void
.end method

.method public setOnClickTabNotChangeListener(Landroid/support/v4/app/LeFragmentTabHost$OnClickTabNotChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/support/v4/app/LeFragmentTabHost$OnClickTabNotChangeListener;

    .prologue
    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnClickTabNotChangeListener:Landroid/support/v4/app/LeFragmentTabHost$OnClickTabNotChangeListener;

    return-void
.end method

.method public setOnDoubleClickTabNotChangeListener(Landroid/support/v4/app/LeFragmentTabHost$OnDoubleClickTabNotChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/support/v4/app/LeFragmentTabHost$OnDoubleClickTabNotChangeListener;

    .prologue
    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnDoubleClickTabNotChangeListener:Landroid/support/v4/app/LeFragmentTabHost$OnDoubleClickTabNotChangeListener;

    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/TabHost$OnTabChangeListener;

    .prologue
    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/app/LeFragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Landroid/support/v4/app/LeFragmentTabHost;->ensureContent()V

    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "containerId"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/app/LeFragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iput p3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContainerId:I

    invoke-direct {p0}, Landroid/support/v4/app/LeFragmentTabHost;->ensureContent()V

    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x1020012

    invoke-virtual {p0, v0}, Landroid/support/v4/app/LeFragmentTabHost;->setId(I)V

    :cond_0
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;ILandroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "containerId"    # I
    .param p4, "realContent"    # Landroid/widget/FrameLayout;

    .prologue
    if-nez p4, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/LeFragmentTabHost;->setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/app/LeFragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    iput-object p1, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/app/LeFragmentTabHost;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iput p3, p0, Landroid/support/v4/app/LeFragmentTabHost;->mContainerId:I

    iput-object p4, p0, Landroid/support/v4/app/LeFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/support/v4/app/LeFragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    if-eq v0, p3, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mRealTabContent and containerId mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/LeFragmentTabHost;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x1020012

    invoke-virtual {p0, v0}, Landroid/support/v4/app/LeFragmentTabHost;->setId(I)V

    goto :goto_0
.end method
