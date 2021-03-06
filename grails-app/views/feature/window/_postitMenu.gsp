%{--
- Copyright (c) 2010 iceScrum Technologies.
-
- This file is part of iceScrum.
-
- iceScrum is free software: you can redistribute it and/or modify
- it under the terms of the GNU Affero General Public License as published by
- the Free Software Foundation, either version 3 of the License.
-
- iceScrum is distributed in the hope that it will be useful,
- but WITHOUT ANY WARRANTY; without even the implied warranty of
- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- GNU General Public License for more details.
-
- You should have received a copy of the GNU Affero General Public License
- along with iceScrum.  If not, see <http://www.gnu.org/licenses/>.
-
- Authors:
-
- Vincent Barrier (vincent.barrier@icescrum.com)
--}%
<is:postitMenuItem first="true">
  <is:link id="${feature.id}"
          action="edit"
          controller="feature"
          update="window-content-${id}"
          value="${message(code:'is.ui.feature.menu.update')}"
          remote="true"/>
</is:postitMenuItem>
<is:postitMenuItem>
  <is:link id="${feature.id}"
          action="copyFeatureToProductBacklog"
          remote="true"
          update="window-content-${id}"
          history="false"
          value="${message(code:'is.ui.feature.menu.copy')}"/>
</is:postitMenuItem>
<is:postitMenuItem>
  <is:link
        id="${feature.id}"
        action="delete"
        remote="true"
        history="false"
        update="window-content-${id}"
        value="${message(code:'is.ui.feature.menu.delete')}"/>
</is:postitMenuItem>
<entry:point id="${id}-${actionName}-postitMenu" model="[feature:feature]"/>