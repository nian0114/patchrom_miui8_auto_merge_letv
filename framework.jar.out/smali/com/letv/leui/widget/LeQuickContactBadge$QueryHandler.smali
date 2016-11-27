.class Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "LeQuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeQuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeQuickContactBadge;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/LeQuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->this$0:Lcom/letv/leui/widget/LeQuickContactBadge;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x0

    .local v7, "lookupUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .local v2, "createUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .local v8, "trigger":Z
    if-eqz p2, :cond_3

    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object v3, p2

    .local v3, "extras":Landroid/os/Bundle;
    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v9, p0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->this$0:Lcom/letv/leui/widget/LeQuickContactBadge;

    # setter for: Lcom/letv/leui/widget/LeQuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v9, v7}, Lcom/letv/leui/widget/LeQuickContactBadge;->access$002(Lcom/letv/leui/widget/LeQuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v9, p0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->this$0:Lcom/letv/leui/widget/LeQuickContactBadge;

    # invokes: Lcom/letv/leui/widget/LeQuickContactBadge;->onContactUriChanged()V
    invoke-static {v9}, Lcom/letv/leui/widget/LeQuickContactBadge;->access$100(Lcom/letv/leui/widget/LeQuickContactBadge;)V

    if-eqz v8, :cond_6

    if-eqz v7, :cond_6

    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    iget-object v10, p0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->this$0:Lcom/letv/leui/widget/LeQuickContactBadge;

    # getter for: Lcom/letv/leui/widget/LeQuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v10}, Lcom/letv/leui/widget/LeQuickContactBadge;->access$000(Lcom/letv/leui/widget/LeQuickContactBadge;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v4, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->this$0:Lcom/letv/leui/widget/LeQuickContactBadge;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeQuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v9

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_5

    const/high16 v5, 0x80000

    .local v5, "intentFlags":I
    :goto_2
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->this$0:Lcom/letv/leui/widget/LeQuickContactBadge;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeQuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "intentFlags":I
    :cond_2
    :goto_3
    return-void

    .end local v3    # "extras":Landroid/os/Bundle;
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .end local p2    # "cookie":Ljava/lang/Object;
    .restart local v3    # "extras":Landroid/os/Bundle;
    :pswitch_0
    const/4 v8, 0x1

    :try_start_0
    const-string v9, "tel"

    const-string v10, "uri_content"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .local v0, "contactId":J
    const/4 v9, 0x1

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_1

    .end local v0    # "contactId":J
    .end local v6    # "lookupKey":Ljava/lang/String;
    :pswitch_2
    const/4 v8, 0x1

    const-string v9, "mailto"

    const-string v10, "uri_content"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .restart local v0    # "contactId":J
    const/4 v9, 0x1

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    goto/16 :goto_1

    .end local v0    # "contactId":J
    .end local v6    # "lookupKey":Ljava/lang/String;
    :catchall_0
    move-exception v9

    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v9

    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_5
    const v5, 0x10008000

    goto :goto_2

    .end local v4    # "intent":Landroid/content/Intent;
    :cond_6
    if-eqz v2, :cond_2

    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v4, v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v4    # "intent":Landroid/content/Intent;
    if-eqz v3, :cond_7

    const-string v9, "uri_content"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_7
    iget-object v9, p0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->this$0:Lcom/letv/leui/widget/LeQuickContactBadge;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeQuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v9

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_8

    const/high16 v5, 0x80000

    .restart local v5    # "intentFlags":I
    :goto_4
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->this$0:Lcom/letv/leui/widget/LeQuickContactBadge;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeQuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .end local v5    # "intentFlags":I
    :cond_8
    const v5, 0x10008000

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
