.class Lcom/android/internal/app/ResolverActivity$15;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->showTextShareDialog(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$ri:Landroid/content/pm/ResolveInfo;

.field final synthetic val$targetInfo:Lcom/android/internal/app/ResolverActivity$TargetInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0

    .prologue
    .line 2742
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$15;->val$ri:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$15;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$15;->val$targetInfo:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2745
    const/4 v11, 0x0

    .line 2746
    .local v11, "targetPackageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$15;->val$ri:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$15;->val$ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 2747
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$15;->val$ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2749
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$15;->val$ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$15;->val$intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mLePaiTitleMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$2900(Lcom/android/internal/app/ResolverActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mLePaiDesMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity;->access$3000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mShareTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$3100(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/app/ResolverActivity;->access$900(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/internal/app/ResolverActivity;->access$3200(Lcom/android/internal/app/ResolverActivity;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mBitmapFileUrl:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/app/ResolverActivity;->access$3300(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity;->access$3400(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPageName:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/internal/app/ResolverActivity;->access$3500(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v0 .. v11}, Lcom/letv/leui/util/LeResolveUtils;->startPriorShareApp(Landroid/app/Activity;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 2750
    .local v12, "isShare":Z
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$15;->val$ri:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$15;->val$ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    .line 2751
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$15;->val$ri:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$3400(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mPageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$3500(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v0, v1, v2, v3}, Lcom/letv/leui/util/LeResolveUtils;->sendShareBroadCast(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    :cond_1
    const-string v0, "leshare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShare = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    if-eqz v12, :cond_2

    .line 2755
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2770
    :goto_0
    return-void

    .line 2758
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2759
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$900(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2760
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$15;->val$intent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$900(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2764
    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$15;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2765
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$15;->val$intent:Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2768
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$15;->val$targetInfo:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    .line 2769
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0

    .line 2762
    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$15;->val$intent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$15;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
