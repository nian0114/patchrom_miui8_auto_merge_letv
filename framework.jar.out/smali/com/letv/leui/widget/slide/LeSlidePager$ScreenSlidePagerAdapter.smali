.class Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;
.super Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;
.source "LeSlidePager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/slide/LeSlidePager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenSlidePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/slide/LeSlidePager;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/slide/LeSlidePager;Landroid/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    # getter for: Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->access$500(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    # getter for: Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->access$500(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 9
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    # getter for: Lcom/letv/leui/widget/slide/LeSlidePager;->mDisableStateSaving:Z
    invoke-static {v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->access$600(Lcom/letv/leui/widget/slide/LeSlidePager;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    # getter for: Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->access$500(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .local v5, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "key":Ljava/lang/String;
    const-string v6, "lef"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, "index":I
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    # getter for: Lcom/letv/leui/widget/slide/LeSlidePager;->mMgr:Landroid/app/FragmentManager;
    invoke-static {v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->access$700(Lcom/letv/leui/widget/slide/LeSlidePager;)Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_4

    :goto_2
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    # getter for: Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->access$500(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v3, :cond_3

    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    # getter for: Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->access$500(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    # getter for: Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->access$500(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v6, "LeSlidePager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad fragment at key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "f":Landroid/app/Fragment;
    .end local v3    # "index":I
    .end local v4    # "key":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    # getter for: Lcom/letv/leui/widget/slide/LeSlidePager;->mDisableStateSaving:Z
    invoke-static {v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->access$600(Lcom/letv/leui/widget/slide/LeSlidePager;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    :cond_0
    return-object v4

    :cond_1
    invoke-super {p0}, Lcom/letv/leui/widget/slide/LeFragmentSlidePagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .local v4, "state":Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    # getter for: Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->access$500(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    # getter for: Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->access$500(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_3

    if-nez v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "state":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .restart local v4    # "state":Landroid/os/Bundle;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lef"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    # getter for: Lcom/letv/leui/widget/slide/LeSlidePager;->mMgr:Landroid/app/FragmentManager;
    invoke-static {v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->access$700(Lcom/letv/leui/widget/slide/LeSlidePager;)Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/Fragment;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .local v1, "fragment":Landroid/app/Fragment;
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    # getter for: Lcom/letv/leui/widget/slide/LeSlidePager;->mMgr:Landroid/app/FragmentManager;
    invoke-static {v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->access$700(Lcom/letv/leui/widget/slide/LeSlidePager;)Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v0}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .end local v1    # "fragment":Landroid/app/Fragment;
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
