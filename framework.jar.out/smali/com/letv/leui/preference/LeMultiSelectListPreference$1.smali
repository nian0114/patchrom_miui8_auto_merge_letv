.class Lcom/letv/leui/preference/LeMultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "LeMultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeMultiSelectListPreference;->onPrepareDialogBuilder(Lcom/letv/leui/widget/LePopupWindow$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeMultiSelectListPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeMultiSelectListPreference;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$1;->this$0:Lcom/letv/leui/preference/LeMultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 181
    if-eqz p3, :cond_0

    .line 182
    iget-object v0, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$1;->this$0:Lcom/letv/leui/preference/LeMultiSelectListPreference;

    iget-object v1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$1;->this$0:Lcom/letv/leui/preference/LeMultiSelectListPreference;

    # getter for: Lcom/letv/leui/preference/LeMultiSelectListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v1}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->access$200(Lcom/letv/leui/preference/LeMultiSelectListPreference;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$1;->this$0:Lcom/letv/leui/preference/LeMultiSelectListPreference;

    # getter for: Lcom/letv/leui/preference/LeMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->access$100(Lcom/letv/leui/preference/LeMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    # |= operator for: Lcom/letv/leui/preference/LeMultiSelectListPreference;->mPreferenceChanged:Z
    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->access$076(Lcom/letv/leui/preference/LeMultiSelectListPreference;I)Z

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$1;->this$0:Lcom/letv/leui/preference/LeMultiSelectListPreference;

    iget-object v1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$1;->this$0:Lcom/letv/leui/preference/LeMultiSelectListPreference;

    # getter for: Lcom/letv/leui/preference/LeMultiSelectListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v1}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->access$200(Lcom/letv/leui/preference/LeMultiSelectListPreference;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$1;->this$0:Lcom/letv/leui/preference/LeMultiSelectListPreference;

    # getter for: Lcom/letv/leui/preference/LeMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->access$100(Lcom/letv/leui/preference/LeMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    # |= operator for: Lcom/letv/leui/preference/LeMultiSelectListPreference;->mPreferenceChanged:Z
    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->access$076(Lcom/letv/leui/preference/LeMultiSelectListPreference;I)Z

    goto :goto_0
.end method
