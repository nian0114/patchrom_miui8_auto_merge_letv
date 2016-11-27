.class public Landroid/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Fragment$InstantiationException;,
        Landroid/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final INVALID_STATE:I = -0x1

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field private static final USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final sClassMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field mAnimatingAway:Landroid/animation/Animator;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mChildFragmentManager:Landroid/app/FragmentManagerImpl;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field private mEnterTransition:Landroid/transition/Transition;

.field mEnterTransitionCallback:Landroid/app/SharedElementCallback;

.field private mExitTransition:Landroid/transition/Transition;

.field mExitTransitionCallback:Landroid/app/SharedElementCallback;

.field mFragmentId:I

.field mFragmentManager:Landroid/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHost:Landroid/app/FragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mLoaderManager:Landroid/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mNextAnim:I

.field mParentFragment:Landroid/app/Fragment;

.field private mReenterTransition:Landroid/transition/Transition;

.field mRemoving:Z

.field mRestored:Z

.field mResumed:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field private mReturnTransition:Landroid/transition/Transition;

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedElementEnterTransition:Landroid/transition/Transition;

.field private mSharedElementReturnTransition:Landroid/transition/Transition;

.field mState:I

.field mStateAfterAnimating:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroid/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 355
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/Fragment;->sClassMap:Landroid/util/ArrayMap;

    .line 366
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 384
    iput v2, p0, Landroid/app/Fragment;->mIndex:I

    .line 396
    iput v2, p0, Landroid/app/Fragment;->mTargetIndex:I

    .line 467
    iput-boolean v3, p0, Landroid/app/Fragment;->mMenuVisible:Z

    .line 486
    iput-boolean v3, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 492
    iput-object v1, p0, Landroid/app/Fragment;->mEnterTransition:Landroid/transition/Transition;

    .line 493
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    .line 494
    iput-object v1, p0, Landroid/app/Fragment;->mExitTransition:Landroid/transition/Transition;

    .line 495
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    .line 496
    iput-object v1, p0, Landroid/app/Fragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 497
    sget-object v0, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 501
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    .line 502
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Fragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    .line 577
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 584
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 603
    :try_start_0
    sget-object v3, Landroid/app/Fragment;->sClassMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 604
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 606
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 607
    const-class v3, Landroid/app/Fragment;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 608
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to instantiate a class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that is not a Fragment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/ClassCastException;

    invoke-direct {v5}, Ljava/lang/ClassCastException;-><init>()V

    invoke-direct {v3, v4, v5}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 619
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 620
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 611
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    sget-object v3, Landroid/app/Fragment;->sClassMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 614
    .local v2, "f":Landroid/app/Fragment;
    if-eqz p2, :cond_2

    .line 615
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 616
    iput-object p2, v2, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 618
    :cond_2
    return-object v2

    .line 623
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "f":Landroid/app/Fragment;
    :catch_1
    move-exception v1

    .line 624
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 627
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 628
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private static loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "currentValue"    # Landroid/transition/Transition;
    .param p3, "defaultValue"    # Landroid/transition/Transition;
    .param p4, "id"    # I

    .prologue
    .line 2445
    if-eq p2, p3, :cond_0

    .line 2458
    .end local p2    # "currentValue":Landroid/transition/Transition;
    :goto_0
    return-object p2

    .line 2448
    .restart local p2    # "currentValue":Landroid/transition/Transition;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, p4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 2449
    .local v2, "transitionId":I
    move-object v1, p3

    .line 2450
    .local v1, "transition":Landroid/transition/Transition;
    if-eqz v2, :cond_1

    const/high16 v3, 0x10f0000

    if-eq v2, v3, :cond_1

    .line 2451
    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 2452
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 2453
    instance-of v3, v1, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/transition/TransitionSet;

    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2455
    const/4 v1, 0x0

    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    :cond_1
    move-object p2, v1

    .line 2458
    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 2094
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2095
    iget v0, p0, Landroid/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2096
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2097
    iget v0, p0, Landroid/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2098
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2099
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2100
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2101
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2102
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2103
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2104
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2105
    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mResumed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2106
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2107
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2108
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2109
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2110
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2111
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2112
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2113
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2114
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2115
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2116
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2117
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2119
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    .line 2120
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2121
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2123
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_2

    .line 2124
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2125
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2127
    :cond_2
    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 2128
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2130
    :cond_3
    iget-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 2131
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2132
    iget-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2134
    :cond_4
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2135
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2136
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2138
    :cond_5
    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v0, :cond_6

    .line 2139
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2140
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2141
    iget v0, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2143
    :cond_6
    iget v0, p0, Landroid/app/Fragment;->mNextAnim:I

    if-eqz v0, :cond_7

    .line 2144
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/Fragment;->mNextAnim:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2146
    :cond_7
    iget-object v0, p0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 2147
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2149
    :cond_8
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 2150
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2152
    :cond_9
    iget-object v0, p0, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v0, :cond_a

    .line 2153
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2154
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2155
    iget v0, p0, Landroid/app/Fragment;->mStateAfterAnimating:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2157
    :cond_a
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_b

    .line 2158
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2159
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2161
    :cond_b
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2162
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2163
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2165
    :cond_c
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 664
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 2168
    iget-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2174
    .end local p0    # "this":Landroid/app/Fragment;
    :goto_0
    return-object p0

    .line 2171
    .restart local p0    # "this":Landroid/app/Fragment;
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2172
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    goto :goto_0

    .line 2174
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .prologue
    .line 2055
    iget-object v0, p0, Landroid/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .prologue
    .line 2081
    iget-object v0, p0, Landroid/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getChildFragmentManager()Landroid/app/FragmentManager;
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-nez v0, :cond_0

    .line 863
    invoke-virtual {p0}, Landroid/app/Fragment;->instantiateChildFragmentManager()V

    .line 864
    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 865
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    .line 874
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    return-object v0

    .line 866
    :cond_1
    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 867
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    goto :goto_0

    .line 868
    :cond_2
    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 869
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_0

    .line 870
    :cond_3
    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 871
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1861
    iget-object v0, p0, Landroid/app/Fragment;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1931
    iget-object v0, p0, Landroid/app/Fragment;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public final getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 700
    iget v0, p0, Landroid/app/Fragment;->mFragmentId:I

    return v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1269
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1270
    .local v0, "result":Landroid/view/LayoutInflater;
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->onUseFragmentManagerInflaterFactory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1271
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    .line 1272
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 1274
    :cond_0
    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1053
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1061
    :goto_0
    return-object v0

    .line 1056
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_1

    .line 1057
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1059
    :cond_1
    iput-boolean v3, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1060
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1061
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    goto :goto_0
.end method

.method public final getParentFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 1965
    iget-object v0, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    sget-object v1, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 804
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    .line 805
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 1

    .prologue
    .line 983
    iget-boolean v0, p0, Landroid/app/Fragment;->mRetainInstance:Z

    return v0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 1896
    iget-object v0, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    sget-object v1, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 1994
    iget-object v0, p0, Landroid/app/Fragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 2028
    iget-object v0, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v1, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 827
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 840
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    .prologue
    .line 774
    iget v0, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 817
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 1

    .prologue
    .line 1046
    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 671
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1617
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Fragment;->mIndex:I

    .line 1618
    iput-object v2, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 1619
    iput-boolean v1, p0, Landroid/app/Fragment;->mAdded:Z

    .line 1620
    iput-boolean v1, p0, Landroid/app/Fragment;->mRemoving:Z

    .line 1621
    iput-boolean v1, p0, Landroid/app/Fragment;->mResumed:Z

    .line 1622
    iput-boolean v1, p0, Landroid/app/Fragment;->mFromLayout:Z

    .line 1623
    iput-boolean v1, p0, Landroid/app/Fragment;->mInLayout:Z

    .line 1624
    iput-boolean v1, p0, Landroid/app/Fragment;->mRestored:Z

    .line 1625
    iput v1, p0, Landroid/app/Fragment;->mBackStackNesting:I

    .line 1626
    iput-object v2, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 1627
    iput-object v2, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 1628
    iput-object v2, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    .line 1629
    iput v1, p0, Landroid/app/Fragment;->mFragmentId:I

    .line 1630
    iput v1, p0, Landroid/app/Fragment;->mContainerId:I

    .line 1631
    iput-object v2, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 1632
    iput-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    .line 1633
    iput-boolean v1, p0, Landroid/app/Fragment;->mDetached:Z

    .line 1634
    iput-boolean v1, p0, Landroid/app/Fragment;->mRetaining:Z

    .line 1635
    iput-object v2, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1636
    iput-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 1637
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1638
    return-void
.end method

.method instantiateChildFragmentManager()V
    .locals 3

    .prologue
    .line 2178
    new-instance v0, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 2179
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    new-instance v2, Landroid/app/Fragment$1;

    invoke-direct {v2, p0}, Landroid/app/Fragment$1;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/FragmentManagerImpl;->attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V

    .line 2194
    return-void
.end method

.method public final isAdded()Z
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDetached()Z
    .locals 1

    .prologue
    .line 898
    iget-boolean v0, p0, Landroid/app/Fragment;->mDetached:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    .prologue
    .line 947
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    return v0
.end method

.method final isInBackStack()Z
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Landroid/app/Fragment;->mBackStackNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInLayout()Z
    .locals 1

    .prologue
    .line 918
    iget-boolean v0, p0, Landroid/app/Fragment;->mInLayout:Z

    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Landroid/app/Fragment;->mRemoving:Z

    return v0
.end method

.method public final isResumed()Z
    .locals 1

    .prologue
    .line 926
    iget-boolean v0, p0, Landroid/app/Fragment;->mResumed:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 935
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1480
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1481
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1130
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1389
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1390
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1376
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1377
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1378
    .local v0, "hostActivity":Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_0

    .line 1379
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1380
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1382
    :cond_0
    return-void

    .line 1377
    .end local v0    # "hostActivity":Landroid/app/Activity;
    :cond_1
    iget-object v1, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1551
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1552
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1790
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1414
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1415
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    .line 1396
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1744
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1745
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1665
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1439
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1598
    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1601
    iget-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    .line 1602
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1603
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1605
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_1

    .line 1606
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 1608
    :cond_1
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    .prologue
    .line 1692
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 1590
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1591
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 1645
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1647
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 1649
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 958
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1368
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1369
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1328
    invoke-virtual {p0, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1329
    iput-boolean v5, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1331
    sget-object v2, Lcom/android/internal/R$styleable;->Fragment:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1333
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/app/Fragment;->mEnterTransition:Landroid/transition/Transition;

    const/4 v3, 0x4

    invoke-static {p1, v0, v2, v1, v3}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Fragment;->mEnterTransition:Landroid/transition/Transition;

    .line 1335
    iget-object v2, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    sget-object v3, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/4 v4, 0x6

    invoke-static {p1, v0, v2, v3, v4}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    .line 1337
    iget-object v2, p0, Landroid/app/Fragment;->mExitTransition:Landroid/transition/Transition;

    const/4 v3, 0x3

    invoke-static {p1, v0, v2, v1, v3}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Fragment;->mExitTransition:Landroid/transition/Transition;

    .line 1339
    iget-object v2, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    sget-object v3, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/16 v4, 0x8

    invoke-static {p1, v0, v2, v3, v4}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    .line 1341
    iget-object v2, p0, Landroid/app/Fragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    const/4 v3, 0x5

    invoke-static {p1, v0, v2, v1, v3}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Fragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 1343
    iget-object v2, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v3, Landroid/app/Fragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    const/4 v4, 0x7

    invoke-static {p1, v0, v2, v3, v4}, Landroid/app/Fragment;->loadTransition(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 1346
    iget-object v2, p0, Landroid/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 1347
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 1350
    :cond_0
    iget-object v2, p0, Landroid/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 1351
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 1354
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1356
    iget-object v2, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v2, :cond_3

    .line 1357
    .local v1, "hostActivity":Landroid/app/Activity;
    :goto_0
    if-eqz v1, :cond_2

    .line 1358
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1359
    invoke-virtual {p0, v1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1361
    :cond_2
    return-void

    .line 1356
    .end local v1    # "hostActivity":Landroid/app/Activity;
    :cond_3
    iget-object v2, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v1

    goto :goto_0
.end method

.method public onInflate(Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1282
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1283
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1573
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1574
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1713
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1724
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1560
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1561
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1682
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 1233
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1525
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1526
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1548
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1504
    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1506
    iget-boolean v0, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    if-nez v0, :cond_1

    .line 1507
    iput-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 1508
    iget-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    .line 1509
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1510
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1512
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_1

    .line 1513
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStart()V

    .line 1516
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1569
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1570
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1577
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1578
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1453
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1495
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1496
    return-void
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2227
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2228
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2230
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2231
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2232
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2233
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2236
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    .line 2237
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 2239
    :cond_2
    return-void
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2278
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2279
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2280
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2282
    :cond_0
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 2343
    iget-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v1, :cond_2

    .line 2344
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2353
    :cond_0
    :goto_0
    return v0

    .line 2347
    :cond_1
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_2

    .line 2348
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Landroid/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2353
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2197
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2198
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2200
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2201
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2202
    iget-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 2203
    new-instance v1, Landroid/util/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not call through to super.onCreate()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2206
    :cond_1
    if-eqz p1, :cond_3

    .line 2207
    const-string v1, "android:fragments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 2208
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_3

    .line 2209
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-nez v1, :cond_2

    .line 2210
    invoke-virtual {p0}, Landroid/app/Fragment;->instantiateChildFragmentManager()V

    .line 2212
    :cond_2
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V

    .line 2213
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    .line 2216
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_3
    return-void
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 2299
    const/4 v0, 0x0

    .line 2300
    .local v0, "show":Z
    iget-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    .line 2301
    iget-boolean v1, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    .line 2302
    const/4 v0, 0x1

    .line 2303
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2305
    :cond_0
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    .line 2306
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2309
    :cond_1
    return v0
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2220
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2221
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2223
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method performDestroy()V
    .locals 3

    .prologue
    .line 2432
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2433
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2435
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2436
    invoke-virtual {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2437
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2438
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2441
    :cond_1
    return-void
.end method

.method performDestroyView()V
    .locals 3

    .prologue
    .line 2417
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2418
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroyView()V

    .line 2420
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2421
    invoke-virtual {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 2422
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2423
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2426
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_2

    .line 2427
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doReportNextStart()V

    .line 2429
    :cond_2
    return-void
.end method

.method performLowMemory()V
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Landroid/app/Fragment;->onLowMemory()V

    .line 2286
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2287
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 2289
    :cond_0
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 2327
    iget-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v1, :cond_2

    .line 2328
    iget-boolean v1, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_1

    .line 2329
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2339
    :cond_0
    :goto_0
    return v0

    .line 2333
    :cond_1
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_2

    .line 2334
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2339
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2357
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 2358
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    .line 2359
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2361
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 2362
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2365
    :cond_1
    return-void
.end method

.method performPause()V
    .locals 3

    .prologue
    .line 2378
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2379
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchPause()V

    .line 2381
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2382
    invoke-virtual {p0}, Landroid/app/Fragment;->onPause()V

    .line 2383
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2384
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2387
    :cond_1
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2313
    const/4 v0, 0x0

    .line 2314
    .local v0, "show":Z
    iget-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    .line 2315
    iget-boolean v1, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    .line 2316
    const/4 v0, 0x1

    .line 2317
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 2319
    :cond_0
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    .line 2320
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Landroid/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2323
    :cond_1
    return v0
.end method

.method performResume()V
    .locals 3

    .prologue
    .line 2261
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2262
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2263
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2265
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2266
    invoke-virtual {p0}, Landroid/app/Fragment;->onResume()V

    .line 2267
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2268
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2271
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    .line 2272
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    .line 2273
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2275
    :cond_2
    return-void
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2368
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2369
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2370
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2371
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 2372
    const-string v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2375
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method performStart()V
    .locals 3

    .prologue
    .line 2242
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2243
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2244
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2246
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2247
    invoke-virtual {p0}, Landroid/app/Fragment;->onStart()V

    .line 2248
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2249
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2252
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    .line 2253
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    .line 2255
    :cond_2
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_3

    .line 2256
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doReportStart()V

    .line 2258
    :cond_3
    return-void
.end method

.method performStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2390
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2391
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStop()V

    .line 2393
    :cond_0
    iput-boolean v3, p0, Landroid/app/Fragment;->mCalled:Z

    .line 2394
    invoke-virtual {p0}, Landroid/app/Fragment;->onStop()V

    .line 2395
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2396
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2400
    :cond_1
    iget-boolean v0, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    if-eqz v0, :cond_3

    .line 2401
    iput-boolean v3, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 2402
    iget-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_2

    .line 2403
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 2404
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 2406
    :cond_2
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_3

    .line 2407
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2408
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    .line 2414
    :cond_3
    :goto_0
    return-void

    .line 2410
    :cond_4
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStop()V

    goto :goto_0
.end method

.method performTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 2292
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onTrimMemory(I)V

    .line 2293
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2294
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchTrimMemory(I)V

    .line 2296
    :cond_0
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1758
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1759
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 1207
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    .line 1208
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1210
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V

    .line 1211
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 635
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 639
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 640
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 641
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 642
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_1
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 2042
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 2043
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 2068
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 2069
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 718
    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 719
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_0
    iput-object p1, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 722
    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 1801
    if-nez p1, :cond_0

    .line 1802
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 1804
    :cond_0
    iput-object p1, p0, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    .line 1805
    return-void
.end method

.method public setEnterSharedElementTransitionCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 1811
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 1812
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1847
    iput-object p1, p0, Landroid/app/Fragment;->mEnterTransition:Landroid/transition/Transition;

    .line 1848
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 1822
    if-nez p1, :cond_0

    .line 1823
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 1825
    :cond_0
    iput-object p1, p0, Landroid/app/Fragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    .line 1826
    return-void
.end method

.method public setExitSharedElementTransitionCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 1832
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 1833
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1914
    iput-object p1, p0, Landroid/app/Fragment;->mExitTransition:Landroid/transition/Transition;

    .line 1915
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1
    .param p1, "hasMenu"    # Z

    .prologue
    .line 994
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    .line 995
    iput-boolean p1, p0, Landroid/app/Fragment;->mHasMenu:Z

    .line 996
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 997
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->invalidateOptionsMenu()V

    .line 1000
    :cond_0
    return-void
.end method

.method final setIndex(ILandroid/app/Fragment;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "parent"    # Landroid/app/Fragment;

    .prologue
    .line 648
    iput p1, p0, Landroid/app/Fragment;->mIndex:I

    .line 649
    if-eqz p2, :cond_0

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 654
    :goto_0
    return-void

    .line 652
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInitialSavedState(Landroid/app/Fragment$SavedState;)V
    .locals 2
    .param p1, "state"    # Landroid/app/Fragment$SavedState;

    .prologue
    .line 740
    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 741
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    :goto_0
    iput-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 745
    return-void

    .line 743
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .prologue
    .line 1012
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 1013
    iput-boolean p1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    .line 1014
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1015
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->invalidateOptionsMenu()V

    .line 1018
    :cond_0
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1948
    iput-object p1, p0, Landroid/app/Fragment;->mReenterTransition:Landroid/transition/Transition;

    .line 1949
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 2
    .param p1, "retain"    # Z

    .prologue
    .line 975
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 976
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t retain fragements that are nested in other fragments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 979
    :cond_0
    iput-boolean p1, p0, Landroid/app/Fragment;->mRetainInstance:Z

    .line 980
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1879
    iput-object p1, p0, Landroid/app/Fragment;->mReturnTransition:Landroid/transition/Transition;

    .line 1880
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1980
    iput-object p1, p0, Landroid/app/Fragment;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 1981
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 2011
    iput-object p1, p0, Landroid/app/Fragment;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 2012
    return-void
.end method

.method public setTargetFragment(Landroid/app/Fragment;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "requestCode"    # I

    .prologue
    .line 759
    iput-object p1, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 760
    iput p2, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    .line 761
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 1034
    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1035
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    .line 1037
    :cond_0
    iput-boolean p1, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 1038
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/app/Fragment;->mDeferStart:Z

    .line 1039
    return-void

    .line 1038
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1256
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    .line 1260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1071
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1072
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    .line 1084
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    .line 1085
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_0
    if-eqz p2, :cond_1

    .line 1088
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, p0, p1, v2, p2}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1094
    :goto_0
    return-void

    .line 1092
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v2, v1}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1102
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1109
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_0

    .line 1110
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1112
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 677
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 678
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    if-ltz v1, :cond_0

    .line 679
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    :cond_0
    iget v1, p0, Landroid/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_1

    .line 683
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    iget v1, p0, Landroid/app/Fragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    :cond_1
    iget-object v1, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 687
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    iget-object v1, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1769
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1770
    return-void
.end method
