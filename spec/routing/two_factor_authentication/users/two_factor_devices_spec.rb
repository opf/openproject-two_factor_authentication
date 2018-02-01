#-- copyright
# OpenProject is a project management system.
# Copyright (C) 2012-2015 the OpenProject Foundation (OPF)
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License version 3.
#
# OpenProject is a fork of ChiliProject, which is a fork of Redmine. The copyright follows:
# Copyright (C) 2006-2013 Jean-Philippe Lang
# Copyright (C) 2010-2013 the ChiliProject Team
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
# See doc/COPYRIGHT.rdoc for more details.
#++

require 'spec_helper'

describe 'users 2fa devices', type: :routing do
  it 'route to GET new' do
    expect(get('/users/2/two_factor_devices/new')).to route_to(controller: 'two_factor_authentication/users/two_factor_devices',
                                                                action: 'new',
                                                                id: '2')
  end

  it 'route to POST register' do
    expect(post('/users/2/two_factor_devices/register')).to route_to(controller: 'two_factor_authentication/users/two_factor_devices',
                                                                     action: 'register',
                                                                     id: '2')
  end

  it 'route to POST confirm' do
    expect(post('/users/2/two_factor_devices/1/make_default')).to route_to(controller: 'two_factor_authentication/users/two_factor_devices',
                                                                      action: 'make_default',
                                                                      id: '2',
                                                                      device_id: '1')
  end

  it 'route to POST delete_all' do
    expect(post('/users/2/two_factor_devices/delete_all')).to route_to(controller: 'two_factor_authentication/users/two_factor_devices',
                                                                         action: 'delete_all',
                                                                         id: '2')
  end

  it 'route to DELETE destroy' do
    expect(delete('/users/2/two_factor_devices/1')).to route_to(controller: 'two_factor_authentication/users/two_factor_devices',
                                                              action: 'destroy',
                                                              id: '2',
                                                              device_id: '1')
  end
end
