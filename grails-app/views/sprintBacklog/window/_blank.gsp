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
<div class="box-blank clearfix">
  <p>${message(code:'is.ui.sprintBacklog.blank.description')}</p>
  <table cellpadding="0" cellspacing="0" border="0" class="box-blank-button">
    <tr>
      <td class="empty">&nbsp;</td>
      <td>
           <is:button
              type="link"
              button="button-s button-s-light"
              href="#releasePlan"
              renderedOnAccess="productOwner() or scrumMaster()"
              title="${message(code:'is.ui.sprintBacklog.blank.new')}"
              alt="${message(code:'is.ui.sprintBacklog.blank.sprint.new')}"
              icon="create" >
            <strong>${message(code:'is.ui.sprintBacklog.blank.sprint.new')}</strong>
          </is:button>
      </td>
      <td class="empty">&nbsp;</td>
      <td>
            <is:button
            type="link"
            button="button-s button-s-light"
            href="#timeline/add"
            renderedOnAccess="productOwner() or scrumMaster()"
            title="${message(code:'is.ui.sprintBacklog.blank.release.new')}"
            alt="${message(code:'is.ui.sprintBacklog.blank.release.new')}"
            icon="create" >
          <strong>${message(code:'is.ui.sprintBacklog.blank.release.new')}</strong>
          </is:button>
      </td>
      <td class="empty">&nbsp;</td>
    </tr>
  </table>
  <entry:point id="${id}-${actionName}"/>
</div>
<jq:jquery>
  jQuery("#window-content-${id}").removeClass('window-content-toolbar');
  jQuery("#window-id-${id}").focus();
  <is:renderNotice />
</jq:jquery>