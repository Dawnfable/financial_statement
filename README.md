# CRUD
- [X] Financial statement
      • Month/Year
      • Status
- [ ] Income
      • Title
      • Amount
- [ ] Expences
      • Title
      • Amount
- [ ] Assets
      • Title
      • Amount/Worth
- [ ] Liabilities
      • Title
      • Total
      • Amount Paid
      • Minimum?
- [ ] Users
      • First name
      • Last name
      • Email

# Functionality
- [ ] Users
      • All users page?
- [ ] PDF/Report
- [ ] everything connected to Financial statements

# Gems
- [X] Devise
- [X] Petergate
- [X] Bootstrap 4
- [X] FriendlyIDs
- [X] Gritter

# TODO
- [X] Add name to user
- [X] Fix frienly_id
- [ ] Navbar
      • [ ] Admin options

# Needs to go in the model
  extend FriendlyId
  friendly_id :name, use: :slugged

# Needs to go in the controller in the show
  @user = User.friendly.find(params[:id])
