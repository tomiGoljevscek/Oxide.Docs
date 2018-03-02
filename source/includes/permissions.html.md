---
title: Permissions
---

# Permissions

## Getting/setting user data

### LastSeenNickname


### Perms


### Groups



## Getting/setting group data

### Title


### Rank


### Perms



## Adding user to group

AddUserGroup(string userid, string groupname)

Adds a user to a specified group.

## Creating a group

CreateGroup(string name, string title, int rank)

Creates a new usergroup.

## Getting group rank

GetGroupRank(string groupname)

Returns the rank of the specified group.

## Getting user data

GetUserData(string userid)

Returns the data for the specified user.

## Getting user groups

GetUserGroups(string userid)

Returns the groups to which the specified user belongs.

## Granting permission to group

GrantGroupPermission(string groupname, string perm, Plugin owner)

Assigns the specified permission to the specified group.

## Granting permission to user

GrantUserPermission(string userid, string perm, Plugin owner)

Assigns the specified permission to the specified user.

## Checking if group exists

GroupExists(string groupname)

Returns a boolean if the specified group exists or not.

## Checking if group has permission

GroupHasPermission(string groupname, string perm)

Returns a boolean if the specified group has the specified permission.

## Checking if groups have permission

GroupsHavePermission

## Checking if permission exists

PermissionExists(string name, Plugin owner)

Returns a boolean if the specified permission exists or not.

## Registering a permission

RegisterPermission(string name, Plugin owner)

Registers the specified permission.

## Removing a group

RemoveGroup(string name)

Removes the specified grouop.

## Removing a user from a group

RemoveUserGroup(string userid, string groupname)

Removes the specified user from the specified grooup.

## Revoking a group's permission

RevokeGroupPermission(string groupname, string perm)

Revokes the specified permission from the specified group.

## Revoking a user's permission

RevokeUserPermission(string userid, string perm)

Revokes the specified permission from the specified user.

## Setting a group's rank

SetGroupRank(string groupname, int rank)

Sets the rank of the specified group.

## Setting a group's title

SetGroupTitle(string groupname, string title)

Sets the title of the specified group.

## Checking if user has permission

UserHasPermission(string userid, string perm)

Returns a boolean if the specified user has the specified permission.
